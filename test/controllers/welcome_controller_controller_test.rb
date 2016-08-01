require 'test_helper'

class WelcomeControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get welcome_controller_about_url
    assert_response :success
  end

end
