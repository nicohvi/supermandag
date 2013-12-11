class PollController < ApplicationController

  def index
    redirect_to(login_path) and return false unless cookies[:username]
    @movies = Movie.all.order(number_of_votes: :desc)
  end

  def login

  end

  def new_session
    cookies.permanent[:username] = params[:username]
    redirect_to(root_path) and return false
  end

end

