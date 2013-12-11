class Movie < ActiveRecord::Base
  has_many :votes
end
