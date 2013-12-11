class AddVoteCountsToMovies < ActiveRecord::Migration
  def change
    Movie.all.each do |movie|
      Movie.update_counters(movie.id, :number_of_votes => movie.votes.length)
    end
  end
end
