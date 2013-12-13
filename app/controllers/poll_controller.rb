class PollController < ApplicationController

  before_action :index, :authenticate

  def index
    movies = Movie.all
    @movies = movies.sort_by &:score
  end

  private

  def authenticate
    redirect_to(oauth_path) and return false unless session[:oauth_email]
  end


end

