require_relative 'computer'
require_relative 'player'

class Game # understands who wins and who loses

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

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
    return "It's a DRAW!" if player.choice == computer.choice
    return "You WON!" if computer.choice == RULES[player.choice]
    "YOU LOST!"
  end

end
