require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1,player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def play
    if @player_1.weapon.name == @player_2.weapon.name
      :draw
    elsif @player_1.weapon.beats(@player_2.weapon)
      :p1_victory
    else
      :p2_victory
    end
  end

  def self.create(p1,p2 = Computer.new)
    @game = Game.new(p1,p2)
  end

  def self.instance
    @game
  end
end

# p1 = Player.new("Zi")
# # # p2 = Player.new("Paul")
# #
# p1.equip("scissors")
# #
# game = Game.new(p1)
#
# p game.vs_computer?

# 20.times do
#   p game.play
# end
