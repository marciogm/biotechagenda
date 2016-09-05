require 'test_helper'

class SelectControllerTest < ActionDispatch::IntegrationTest

  test "Get states by country" do
    get select_states_path( { country: 'Brazil'} ), xhr: true
    assert_response :success
  end

  test "Get cities by state" do
    get select_states_path( { state: 'Sao Paulo'} ), xhr: true
    assert_response :success
  end

end
