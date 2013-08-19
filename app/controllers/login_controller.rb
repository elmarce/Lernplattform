class LoginController < ApplicationController
  def show_login
  end

  def create_login

  	user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to lessons_path,
			notice: "Sie haben sich angemeldet"

		else
			flash.now.alert = "Fehlerhafte E-Mail-Adresse oder Passwort"
			render action: "show_login"
		end

  end

  def logout
  	session[:user_id] = nil
		redirect_to login_path,
		notice: "Sie haben sich ausgeloggt."
  end
end
