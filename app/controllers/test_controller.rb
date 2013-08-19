class TestController < ApplicationController
  def new_test
  	@test = Test.new
  end

  def show_test
  	@test = Test.all
  	
  end

  def questions

  end

  def evaluation
  end

  private
		def test_params
			params.require(:test).permit("name", "level")
		end
end
