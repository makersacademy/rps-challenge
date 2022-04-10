require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :computer

  def initialize(player = Player.new("Player"), computer = Computer.new)
    @player = player
    @computer = computer
  end

  def computer_move
    @computer.random_move
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
