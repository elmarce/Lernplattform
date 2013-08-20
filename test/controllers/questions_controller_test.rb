require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  test "should get show_questions" do
    get :show_questions
    assert_response :success
  end

  test "should get update_questions" do
    get :update_questions
    assert_response :success
  end

end
