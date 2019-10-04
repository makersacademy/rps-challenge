require_relative 'player'
require_relative 'moves'

class Game
  attr_accessor :player1, :player2

  include Moves

  def initialize(player1, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def winner(player1_move, player2_move)
    winning_move = winning_move(player1_move, player2_move)
    if player1_move == winning_move
      player1.name
    elsif player2_move == winning_move
      player2.name
    else
      "tie"
    end
  end
end