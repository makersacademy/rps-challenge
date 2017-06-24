require "./lib/player1.rb"

class Game
  
  attr_reader :player1, :player2
  
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  
  def self.create_new_game(player1, player2)
    @game = Game.new(player1, player2)
  end
  
  def self.game_instance
    @game
  end
  
end
