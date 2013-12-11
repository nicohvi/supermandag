class AddVoteCountToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :number_of_votes, :integer
  end

  Movie.all.each do |movie|
    Movie.update_counters(movie.id, :number_of_votes => movie.votes.length)
  end

end
