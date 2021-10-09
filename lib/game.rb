class Game
  def initialize
    
  end

  def result(p1, p2)
    winner = {"rock"=>"scissors", "paper"=>"rock", "scissors"=>"paper"}
    winner[p1] == p2 ? 'win' : (winner [p2] == p1 ? 'lose' : 'draw')
  end

end
