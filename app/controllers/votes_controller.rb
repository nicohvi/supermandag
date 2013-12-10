class VotesController < ApplicationController

  def create
    @movie = Movie.find(params[:movie_id])
    @movie.votes.create(username: cookies[:username])
    if @movie.save
      render json: @movie.votes.length
    else
      render json: 'Du har stemt alt, din fitte!'
    end
  end

end
