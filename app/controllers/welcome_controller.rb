class WelcomeController < ApplicationController
  skip_before_action :validate_session, only: [:login, :create]

  def login
  end

  def create
    if params[:user_name] == "laura" && params[:password] == "102713"
      session[:logged_in] = true
      redirect_to events_path
    else
      redirect_to root_path
    end
  end

  def logout
    session[:logged_in] = false
    redirect_to root_path
  end
end
