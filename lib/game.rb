class Game

  def random_number
    rand(3)
  end

  def random_number_again
    rand(5)
  end

  def computer_choose(game_type)
    choices = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
    if game_type == 1
      choices[random_number]
    elsif game_type == 2
      choices[random_number_again]
    end
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