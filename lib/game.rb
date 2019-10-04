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

  # def winner
  #   p1_move = MOVES.index(player1.move)
  #   p2_move = MOVES.index(player2.move)
  #   if (p1_move - p2_move).abs
  # end
end