require 'test_helper'

class StaticControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_controller_about_url
    assert_response :success
  end

  test "should get contact" do
    get static_controller_contact_url
    assert_response :success
  end

end
