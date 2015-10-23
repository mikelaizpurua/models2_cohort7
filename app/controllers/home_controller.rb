class HomeController < ApplicationController

  before_action :check_logged_in, only: [:index2]

  def index
    #@users = User.all
    @user = User.take
    # render file: "/Users/etoro/Desktop/wyncode"
    # render template: 'users/index'
    # render inline: 'The time is now <%= Time.now %>'
    # render xml: @user
    # render plain: 'client error', status: :not_found
    # render layout: 'simple'

    # redirect_to root_path
    # redirect_to :back
    #head :no_content
    #render plain: params[:user].to_json

    #session[:school] = 'wyncode'
    #session.delete :school

    # @message = "You are "
    # @message += if session[:id] == 1
    #   "logged in"
    # else
    #   "not logged in"
    # end

    # flash.keep[:alert]

    #render plain: session.to_json

    respond_to do |format|
      format.html {}
      format.json {}
      format.all {
        render plain: "We only support HTML and JSON.", status: :unprocessable_entity
      }
    end
  end

  def login
    session[:id] = 1
    # flash[:notice] = "Thanks for logging in!"
    redirect_to :back, notice: "Thanks for logging in!"
  end

  def logout
    session.delete(:id)
    # flash[:alert] = "Goodbye!"
    redirect_to :back, alert: "See ya!"
  end


  def index2
    puts "I'm inside index2"
    @users = User.all
    # redirect_to root_path
  end

  def search
    render plain: params.to_json
  end

  private 
  def choose_layout
    rand() > 0.5 ? 'simple' : false
  end
end
