class MoviesController < ApplicationController

  http_basic_authenticate_with name: '2pac', password: '2pac'

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to root_path
    else
      flash[:error] = "Wrong, bitch."
      render 'new'
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :image_url)
  end

end
