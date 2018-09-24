class Game
  attr_reader :player1, :player2

  WINNING_HAND = [{ 'rock' => 'scissors' },
                   { 'scissors' => 'paper' },
                   { 'paper' => 'rock' }]

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    raise 'Players have not made a move' if no_move
    if WINNING_HAND.include? hand
      player1
    elsif player1.move == player2.move
      nil
    else
      player2
    end
  end

  private #----------------------------

  def hand
    { player1.move => player2.move }
  end

  def no_move
    !(@player1.move && @player2.move)
  end
end
