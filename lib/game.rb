require './lib/player.rb'

class Game

  attr_reader :player, :computer

  def initialize(player_name)
    @player = Player.new(player_name)
    @computer = Computer.new
  end

  def self.game(player_name)
    @game_class = Game.new(player_name)
  end

  def self.access_game
    @game_class
  end
end
