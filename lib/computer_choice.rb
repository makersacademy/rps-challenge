class Game

  def computer_choose
    choices = ['Rock', 'Paper', 'Scissors']
    choices[random_number]
  end

  def random_number
    rand(2)
  end

  def result(player, cpu)
    if player == cpu
      'Draw'
    elsif (player == 'Rock' && cpu == 'Scissors') || (player == 'Scissors' && cpu == 'Paper') || (player == 'Paper' && cpu == 'Rock')
      'Player wins'
    else
      'Computer wins'
    end
  end

  def computer_choose_again
    choices = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
    choices[random_number_again]
  end

  def random_number_again
    rand(4)
  end


  def new_game_result(player, cpu)
    if player == cpu
      return 'Draw'
    end
    if player == 'Rock'
      if cpu == 'Scissors' || cpu == 'Lizard'
        return 'Player wins'
      else
        return 'Computer wins'
      end
    elsif player == 'Scissors'
      if cpu == 'Paper' || cpu == 'Lizard'
        return 'Player wins'
      else
        return 'Computer wins'
      end
    elsif player == 'Paper'
      if cpu == 'Rock' || cpu == 'Spock'
        return 'Player wins'
      else
        return 'Computer wins'
      end
    elsif player == 'Lizard'
      if cpu == 'Paper' || cpu == 'Spock'
        return 'Player wins'
      else
        return 'Computer wins'
      end
    elsif player == 'Spock'
      if cpu == 'Scissors' || cpu == 'Rock'
        return 'Player wins'
      else
        return 'Computer wins'
      end
    end
  end

end