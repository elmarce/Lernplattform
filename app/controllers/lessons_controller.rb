class LessonsController < ApplicationController

  before_filter :require_login!

  def view_lessonsList
  	@lesson = Lesson.all

  end

  def view_lesson
  	@lesson = Lesson.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text @lesson.content
        send_data pdf.render, filename: "lesson_#{@lesson}.pdf", 
        type: "application/pdf", 
        disposition: "inline"
      end
      
    end
  end

  def view_test
  end

  def view_evaluation
  end


	private
		def lesson_params
			params.require(:lesson).permit("thema",
			"content", "autor")
		end

    private
      def require_login!
        unless user_signed_in?
            redirect_to login_path,
            alert: "Bitte melden Sie sich zuerst an."
          end
    end
end
