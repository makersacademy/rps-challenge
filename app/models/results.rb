require_relative './item.rb'

class Results

  def self.winner(p1, p2)
    if p1.results[p2]
       ('You Win')
     else
       ('You Lose')
     end
  end

end
