require "test_helper"

class LoginPageControllerTest < ActionDispatch::IntegrationTest
  test "should get signup_page" do
    get login_page_signup_page_url
    assert_response :success
  end
end
