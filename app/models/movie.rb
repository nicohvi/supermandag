class Movie < ActiveRecord::Base
  has_many :votes

  scope :by_votes,
        select('*, count(votes.id) AS votes').
            joins(:votes).
            group('votes.id, movies.id, movies.title, movies.image_url').
            order('votes DESC')
end
