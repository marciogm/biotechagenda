require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get new" do
    get new_event_path
    assert_response :success
  end

  test "get show" do
    event = create(:event)
    get event_path(event)
    assert_response :success
  end

  test "should not get edit" do
    event = create(:event)
    get edit_event_path(event)
    assert_response :found
  end

  test "should get edit" do
    admin = create(:admin)
    sign_in admin

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

  test "should not destroy event" do
    event = create(:event)
    assert_difference('Event.count', 0) do
      delete event_path(event)
    end

    assert_redirected_to new_admin_session_path
  end

  test "should destroy event" do
    admin = create(:admin)
    sign_in admin

    event = create(:event)
    assert_difference('Event.count', -1) do
      delete event_path(event)
    end

    assert_redirected_to root_path
    assert_equal 'Event was successfully destroyed.', flash[:notice]
  end

end
