require 'test_helper'

class ChatroomsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get chatrooms_controller_show_url
    assert_response :success
  end

end
