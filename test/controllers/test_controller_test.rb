require 'test_helper'

class TestControllerTest < ActionController::TestCase
  test "should get new_test" do
    get :new_test
    assert_response :success
  end

  test "should get questions" do
    get :questions
    assert_response :success
  end

  test "should get evaluation" do
    get :evaluation
    assert_response :success
  end

end
