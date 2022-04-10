require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :player2

  def initialize(player = Player.new("Player"), player2 = Computer.new)
    @player = player
    @player2 = player2
  end

  def computer_move
    @player2.random_move
  end

  def self.find(id)
    games[id]
  end

  def self.add(id, game)
    games[id] = game
  end

  def self.games
    @games ||= {}
  end
  
end
