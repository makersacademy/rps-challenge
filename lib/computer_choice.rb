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

end