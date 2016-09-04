require_relative 'player'
require_relative 'computer'

class Game

attr_reader :player_1, :player_2

RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.current_game
    @game
  end

  def result
    return :draw if player_1.weapon == player_2.weapon
    return :win if RULES[player_1.weapon] == player_2.weapon
    return :loss
  end

end
