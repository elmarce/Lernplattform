require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get show_login" do
    get :show_login
    assert_response :success
  end

  test "should get create_login" do
    get :create_login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

end
