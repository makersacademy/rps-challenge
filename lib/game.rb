class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    raise 'Players have not made a move' if no_move
    if (player1.move == 'rock' && player2.move == 'scissors') || (player1.move == 'scissors' && player2.move == 'paper') || (player1.move == 'paper' && player2.move == 'rock')
      player1
    elsif player1.move == player2.move
      nil
    else
      player2
    end
  end

  private #----------------------------

  def no_move
    !(@player1.move && @player2.move)
  end
end
