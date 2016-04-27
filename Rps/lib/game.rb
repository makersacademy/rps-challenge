require_relative 'player'
require_relative 'computer'

class Game

attr_accessor :player_1, :player_2

RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

WEAPONS = [:rock, :paper, :scissors]

  def initialize(player_1, player_2=Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player)
  	@game = Game.new(player)
  end

  def self.instance
  	@game
  end

  def result
    @player_2.choose_weapon
    return :draw if (@player_1.weapon == @player_2.weapon)
    return :win if (RULES[@player_1.weapon] == @player_2.weapon)
    :lose
  end

end
