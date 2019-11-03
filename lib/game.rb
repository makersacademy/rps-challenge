class Game
  attr_reader :outcome

  def winner(p1, p2)
    if p1 == 'Paper' && p2 == 'Rock'
      @outcome = 'Player 1'
    elsif p1 == 'Scissors' && p2 == 'Paper'
      @outcome = 'Player 1'
    elsif p1 == 'Rock' && p2 == 'Scissors'
      @outcome = 'Player 1'
    elsif p1 == p2
      @outcome = 'Draw'
    else
      @outcome = 'Player 2'
    end
    @outcome
  end

  def randomizer
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
