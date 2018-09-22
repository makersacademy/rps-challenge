class Game
  attr_reader :p1, :p2

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def winner
    raise 'Players have not made a move' if no_move
    if (p1.move == 'rock' && p2.move == 'scissors') || (p1.move == 'scissors' && p2.move == 'paper') || (p1.move == 'paper' && p2.move == 'rock')
      p1
    elsif p1.move == p2.move
      nil
    else
      p2
    end
  end

  # private #----------------------------

  def no_move
    !(@p1.move && @p2.move)
  end
end
