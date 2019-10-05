require_relative 'move'
require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :move

  def initialize(player_1, move)
    @player_1 = player_1
    @moves = []
    @move = move
  end

  def player_move(move)
    @moves << @move.player_move(move)
  end

  def computer_move
    @move.computer_move
  end
 
  def last_action
    @moves.last
  end

  def self.create(player_1, move)
    @game = Game.new(player_1, move)
  end

  def self.instance
    @game
  end
end
