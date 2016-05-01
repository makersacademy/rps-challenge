require_relative 'player'
require_relative 'computer'


class Game

  attr_reader :player_1, :player_2

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @class_game = Game.new(player_1, player_2)
  end

  def self.instance
    @class_game
  end

  def result
    return :win if (RULES[@player_1.weapon] == @player_2.weapon)
    return :lose if (RULES[@player_2.weapon] == @player_1.weapon)
    :draw
  end

end






























