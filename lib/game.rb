require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :player2, :rounds, :wins, :loss

  def initialize(player = Player.new("Player"), player2 = Computer.new)
    @player = player
    @player2 = player2
    @rounds = 0
    @wins = 0
    @loss = 0
  end

  def computer_move
    @player2.random_move
  end

  def add_round
    @rounds += 1
  end

  def add_win
    @rounds += 1
    @wins += 1
  end

  def add_loss
    @rounds += 1
    @loss += 1
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
