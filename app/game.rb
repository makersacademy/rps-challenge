require_relative 'computer'
require_relative 'player'
class Game
  attr_reader :player_1, :player_2
  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def play(weapon_name)
    @player_1.play(weapon_name)
    @player_2.play
  end
  def results
    @player_1.weapon.beats?(@player_2.weapon.type) ? "You won" : "Computer won"
  end
end
