class Movie < ActiveRecord::Base
  has_many :votes

  def score
    score = 0
    nplol_members = 0
    votes.each do |vote|
      match = vote.username.match('Nicolay|Håvard|Øystein Wethe')
      if match
        score += 2
        nplol_members += 1
      else
        score += 1
      end
    end
    score = 99 if nplol_members == 3
    score
  end

end
