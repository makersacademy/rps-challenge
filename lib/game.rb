require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  RULES = {rock: :scissors,
           paper: :rock,
           scissors: :paper}
           
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
    return "DRAW!" if player.choice == computer.choice
    return "YOU WIN!" if computer.choice == RULES[player.choice]
    "YOU LOSE!"
  end
end
