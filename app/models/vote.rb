class Vote < ActiveRecord::Base
  belongs_to :movie

  validates_uniqueness_of :username, scope: :movie_id
end
