class Vote < ActiveRecord::Base
  belongs_to :movie, counter_cache: :number_of_votes

  validates_uniqueness_of :username, scope: :movie_id
end
