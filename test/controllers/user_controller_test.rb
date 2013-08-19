require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get view_login" do
    get :view_login
    assert_response :success
  end

  test "should get view_registrieren" do
    get :view_registrieren
    assert_response :success
  end

  test "should get view_start" do
    get :view_start
    assert_response :success
  end

  test "should get view_profile" do
    get :view_profile
    assert_response :success
  end

  test "should get update_user" do
    get :update_user
    assert_response :success
  end

end
