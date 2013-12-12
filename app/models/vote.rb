class Vote < ActiveRecord::Base
  belongs_to :movie, counter_cache: :number_of_votes

  validates_uniqueness_of :username, scope: :movie_id

  before_save :username_check

  private

  def username_check
    Vote.where(movie_id: movie.id).each do |vote|
      return false if ( vote.username.include?(username) || username.include?(vote.username) )
    end
  end

end
