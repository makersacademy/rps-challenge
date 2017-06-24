require "./lib/player.rb"

class Game
  
  attr_reader :player
  
  
  def initialize(player)
    @player = player
  end
  
  def self.create_new_game(player)
    @game = Game.new(player)
  end
  
  def self.game_instance
    @game
  end
  
end
