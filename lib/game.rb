require_relative 'computer'
require_relative 'player'

class Game

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
    return :draw if player.choice == computer.choice
    return :win if computer.choice == RULES[player.choice]
    :lose
  end

end
