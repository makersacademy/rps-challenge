class Game

  def computer_choose
    x = rand(2)
    if x == 0
      'Rock'
    elsif x == 1
      'Scissors'
    else
      'Paper'
    end
  end

  def result(player_choice, computer_choice)
    if player_choice == 'Rock'
      if computer_choice == 'Rock'
        'Draw'
      elsif computer_choice == 'Scissors'
        'Player wins'
      else
        'Computer wins'
      end
    elsif player_choice == 'Scissors'
      if computer_choice == 'Rock'
        'Computer wins'
      elsif computer_choice == 'Scissors'
        'Draw'
      else
        'Player wins'
      end
    else
      if computer_choice == 'Rock'
        'Player wins'
      elsif computer_choice == 'Scissors'
        'Computer wins'
      else
        'Draw'
      end
    end
  end

end