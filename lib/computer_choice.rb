class Game

  def computer_choose
    x = rand(2)
    if x == 0
      return 'Rock'
    elsif x == 1
      return 'Scissors'
    else
      return 'Paper'
    end
  end

  def result(player_choice, computer_choice)
    if player_choice == 'Rock'
      if computer_choice == 'Rock'
        return 'Draw'
      elsif computer_choice == 'Scissors'
        return 'Player wins'
      else
        return 'Computer wins'
      end
    elsif player_choice == 'Scissors'
      if computer_choice == 'Rock'
        return 'Computer wins'
      elsif computer_choice == 'Scissors'
        return 'Draw'
      else
        return 'Player wins'
      end
    else
      if computer_choice == 'Rock'
        return 'Player wins'
      elsif computer_choice == 'Scissors'
        return 'Computer wins'
      else
        return 'Draw'
      end
    end
  end


end