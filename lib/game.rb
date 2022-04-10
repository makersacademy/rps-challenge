require_relative './player'

class Game

  attr_reader :player1, :player2
  
  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player1 = player2
  end

  def declare_winner
  end

end
