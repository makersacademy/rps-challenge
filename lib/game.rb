class Game
  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
    :rock     => {:rock => :draw, :paper => :lose, :scissors => :win},
    :paper    => {:rock => :win, :paper => :draw, :scissors => :lose},
    :scissors => {:rock => :lose, :paper => :win, :scissors => :draw}
  }

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    RULES[player1.weapon][player2.weapon]
  end
end
