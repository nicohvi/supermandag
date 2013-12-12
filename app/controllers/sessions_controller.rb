class SessionsController < ApplicationController

  def omniauth_create
    oauth_hash = request.env['omniauth.auth']['info'].symbolize_keys!
    session[:oauth_email] = oauth_hash[:email]
    session[:username] = oauth_hash[:first_name]
    @movies = Movie.all.order(number_of_votes: :desc)
    render 'poll/index'
  end

  def destroy
    session.delete(:oauth_email)
    session.delete(:username)
    render 'poll/logout'
  end

end