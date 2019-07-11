require_relative 'player'
require_relative 'computer'

class Game

  def initialize(player_1,player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
    @outcome
  end

  def play
    if @player_1.weapon.name == @player_2.weapon.name
      @outcome = :draw
    elsif @player_1.weapon.beats(@player_2.weapon)
      @outcome = :p1_victory
    else
      @outcome = :p2_victory
    end
  end
end

# p1 = Player.new("Zi")
# # p2 = Player.new("Paul")
#
# p1.equip("scissors")
#
# game = Game.new(p1)
#
# 20.times do
#   p game.play
# end
