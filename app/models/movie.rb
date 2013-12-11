class Movie < ActiveRecord::Base
  has_many :votes

  scope :by_votes,
        select('movies.id, title, image_url, count(votes.id) AS votes').
            joins(:votes).
            group('movies.id').
            order('votes DESC')
end
