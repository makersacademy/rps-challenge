require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize(name)
    @player1 = Player.new(name)
    @player2 = Computer.new
  end

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  WEAPONS = [:rock, :paper, :scissors]

end
