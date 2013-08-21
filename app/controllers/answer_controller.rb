class AnswerController < ApplicationController
  def new_answer
  end

  def show_answers
  	@lesson = Lesson.find(params[:id])
   # @tests = @lesson.tests

  	@test = @lesson.tests(params[:test_id])
   # @questions = @test.questions

  	@question = @test.questions(params[:question_id])
    @answers = @question.answers
  end
end
