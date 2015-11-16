class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_lang

  private

  def check_lang
    desired_language = params[:lang] || session[:lang] || :en
    I18n.locale = desired_language
    session[:lang] = desired_language
  end

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
