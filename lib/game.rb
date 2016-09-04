require_relative 'player'
require_relative 'computer'

class Game

attr_reader :player, :computer

RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.current_game
    @game
  end

  def result
    return :draw if player.weapon == computer.weapon
    return :win if RULES[player.weapon] == computer.weapon
    return :loss
  end

end
