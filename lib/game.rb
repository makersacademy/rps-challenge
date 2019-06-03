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
    RULES[p1][computer]
  end
end

# puts play(:rock, :paper)        # :paper
# puts play(:scissors, :rock)     # :rock
# puts play(:scissors, :scissors) # :draw
