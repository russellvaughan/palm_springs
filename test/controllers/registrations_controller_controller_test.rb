require 'test_helper'

class RegistrationsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get registrations_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get registrations_controller_create_url
    assert_response :success
  end

end
