class Game

  DRAW = "It's a draw!"
  WIN = "You win!"
  LOSE = "You lose!"

  RULES = {
  :rock     => {:rock => DRAW, :paper => LOSE, :scissors => WIN,
  :paper    => {:rock => WIN, :paper => DRAW, :scissors =>  LOSE},
  :scissors => {:rock => LOSE, :paper => WIN, :scissors => DRAW}
  }}

  def computer
    [:rock, :paper, :scissors].sample
  end

  def play(p1, computer)
    puts RULES[p1][computer]
  end
end

# g = Game.new
# puts g.play(:rock, :paper)        
# puts g.play(:scissors, :rock)     
# puts g.play(:scissors, :scissors) 
