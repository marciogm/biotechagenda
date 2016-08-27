require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_presence_of(:description)
  should validate_presence_of(:start_date)
  should validate_presence_of(:end_date)
end
