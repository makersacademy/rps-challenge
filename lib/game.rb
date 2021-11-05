require './lib/player'

class Game
  attr_reader :game, :players

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end
  
  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players[0]
  end 

  def player2
    @players[1]
  end 

  def calculate_winner

  end
end
