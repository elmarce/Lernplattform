class TestController < ApplicationController
  def new_test
  	@test = Test.new
  end

  def show_test

  	
  end

  def questions
   @test = Test.find(params[:id])
   @questions = @test.questions
  end

  def evaluation
  end

  private
		def test_params
			params.require(:test).permit("name", "level", "lesson_id")
		end
end
