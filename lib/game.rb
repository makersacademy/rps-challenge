require_relative 'player'

class Game
  attr_reader :player1

  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize(player1)
    @player1 = Player.new(player1)
  end
end
