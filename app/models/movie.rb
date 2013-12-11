class Movie < ActiveRecord::Base
  has_many :votes

  scope :by_votes,
        select('*, count(votes.id) AS votes').
            joins(:votes).
            group('id').
            order('votes DESC')
end
