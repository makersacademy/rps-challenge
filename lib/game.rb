require 'player'

class Game
  attr_reader :player1, :player2, :choosen_move
  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end

  def choose_move(move)
    @choosen_move = move
  end
end
