class PollController < ApplicationController

  before_action :index, :authenticate

  def index
    @movies = Movie.all.order(number_of_votes: :desc)
  end

  private

  def authenticate
    redirect_to(oauth_path) and return false unless session[:oauth_email]
  end


end

