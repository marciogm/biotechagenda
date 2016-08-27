require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get new_event_path
    assert_response :success
  end

  test "get show" do
    event = create(:event)
    get event_path(event)
    assert_response :success
  end

  test "get edit" do
    event = create(:event)
    get edit_event_path(event)
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_path(params: { event: attributes_for(:event) })
    end
    assert_equal 'Event was successfully created.', flash[:notice]
  end

  test "should destroy event" do
    event = create(:event)
    assert_difference('Event.count', -1) do
      delete event_path(event)
    end

    assert_redirected_to events_path
    assert_equal 'Event was successfully destroyed.', flash[:notice]
  end

end
