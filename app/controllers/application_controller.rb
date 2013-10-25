class ApplicationController < ActionController::Base
  before_action :validate_session
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def validate_session
    redirect_to root_path unless session[:logged_in]
  end
end
