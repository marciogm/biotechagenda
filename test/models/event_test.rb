require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_presence_of(:description)
  should validate_presence_of(:start_date)
  should validate_presence_of(:end_date)
  should validate_presence_of(:country)
  should validate_presence_of(:state)
  should validate_presence_of(:city)

  should "group events by month" do
    create(:event, start_date: "Sun, 04 Sep 2016 18:56:32 UTC +00:00", end_date: "Sun, 04 Sep 2016 18:56:32 UTC +00:00")
    Event.by_month.assert_valid_keys "September - 2016"
  end
end
