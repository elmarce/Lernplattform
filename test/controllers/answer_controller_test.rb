require 'test_helper'

class AnswerControllerTest < ActionController::TestCase
  test "should get new_answer" do
    get :new_answer
    assert_response :success
  end

  test "should get show_answers" do
    get :show_answers
    assert_response :success
  end

end
