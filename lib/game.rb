class Game

  def computer_choice
    computer_choice = ['Rock', 'Paper','Scissors'].sample
  end

  def player_choice
    player_choice = ['Rock', 'Paper','Scissors']
  end

  def result (p1,p2)
    if
      p1 == p2
      'Draw'
    elsif (p1 == 'Rock' && p2 == 'Scissors') || (p1 == 'Scissors' && p2 == 'Paper') || (p1 == 'Paper' && p2 == 'Rock')
      'Player wins'
    else
      'Computer wins'
    end
  end
end
