class Game

  def random_number
    rand(2)
  end

  def computer_choose
    choices = ['Rock', 'Paper', 'Scissors']
    choices[random_number]
  end

  def random_number_again
    rand(4)
  end

  def computer_choose_again
    choices = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
    choices[random_number_again]
  end

  def result(player, cpu)
    if player == cpu
      'Draw'
    elsif player == 'Rock' && (cpu == 'Scissors' || cpu == 'Lizard')
      'Player wins'
    elsif player == 'Scissors' && (cpu == 'Paper' || cpu == 'Lizard')
      'Player wins'
    elsif player == 'Paper' && (cpu == 'Rock' || cpu == 'Spock')
      'Player wins'
    elsif player == 'Lizard' && (cpu == 'Paper' || cpu == 'Spock')
      'Player wins'
    elsif player == 'Spock' && (cpu == 'Scissors' || cpu == 'Rock')
      'Player wins'
    else
      'Computer wins!'
    end
  end

end