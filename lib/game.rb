require_relative 'computer'
require_relative 'player'

class Game
  OPTIONS = [:rock, :paper, :scissors]

  RULES = {
  rock:     {rock: :draw, paper: :lose, scissors: :win},
  paper:    {rock: :win, paper: :draw, scissors: :lose},
  scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def result
    RULES[@player.choice][@computer.choice]
  end

end
