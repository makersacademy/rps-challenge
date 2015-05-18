class Game

  def computer_choice
    computer_choice = %w(Rock Paper Scissors).sample
  end

  def player_choice
    player_choice = %w(Rock Paper Scissors)
  end

  def result(p1)
    p2 = computer_choice
    if p1 == p2
      'Draw'
    elsif (p1 == 'Rock' && p2 == 'Scissors') || (p1 == 'Scissors' && p2 == 'Paper') || (p1 == 'Paper' && p2 == 'Rock')
      'You win!'
    else
      'Computer wins'
    end
  end
end
