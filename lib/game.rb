class RPS
  AVAILABLE_CHOICES = ['rock', 'paper', 'scissors']

  def play choice
    fail 'please enter a valid option' unless AVAILABLE_CHOICES.include?(choice)
    human = choice
    computer = AVAILABLE_CHOICES.sample
    if human == 'paper' && computer == 'rock'
      'You win, paper covers the computersrock'
    elsif human == 'rock' && computer == 'scissors'
      'You win, rock breaks the computers scissors'
    elsif human == 'scissors' && computer == 'paper'
      'You win, scissors cuts the computers paper'
    elsif human == computer
      "Tie. You both chose #{human}"
    elsif human == 'rock' && computer == 'paper'
      'You lose, computer had paper, paper covers rock'
    elsif human == 'scissors' && computer == 'rock'
      'You lose, computer had rock, rock breaks scissors'
    elsif human == 'paper' && computer == 'scissors'
      'You lose, computer had scissors, scissors cuts paper'
    else
      'You did something wrong'
    end
  end

end
