require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  test "should get view_lessonsList" do
    get :view_lessonsList
    assert_response :success
  end

  test "should get view_lesson" do
    get :view_lesson
    assert_response :success
  end

  test "should get view_test" do
    get :view_test
    assert_response :success
  end

  test "should get view_evaluation" do
    get :view_evaluation
    assert_response :success
  end

end
