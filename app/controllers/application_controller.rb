class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_user
    #@user ||= User.find(session[:user_id])
  end

  #helper :current_user

  def check_logged_in
    if current_user.nil?
      #redirect_to root_path, alert: "Please login to see this page"
    end
  end
end
