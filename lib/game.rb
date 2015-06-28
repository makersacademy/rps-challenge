class RPS
  AVAILABLE_CHOICES = ['rock', 'paper', 'scissors']

  def user_choice choice
    fail 'please enter a valid option' unless AVAILABLE_CHOICES.include?(choice)
    choice
  end

  def computer_choice
    AVAILABLE_CHOICES.sample
  end

  def play human, computer
    if human == 'paper' && computer == 'rock'
      'You win, paper covers rock'
    elsif human == 'rock' && computer == 'scissors'
      'You win, rock breaks scissors'
    elsif human == 'scissors' && computer == 'paper'
      'You win, scissors cuts paper'
    elsif human == 'paper' && computer == 'paper'
      'Tie'
    elsif human == 'rock' && computer == 'rock'
      'Tie'
    elsif human == 'scissors' && computer == 'scissors'
      'Tie'
    elsif human == 'rock' && computer == 'paper'
      'You lose, paper covers rock'
    elsif human == 'scissors' && computer == 'rock'
      'You lose, rock breaks scissors'
    elsif human == 'paper' && computer == 'scissors'
      'You lose, scissors cuts paper'
    else
      'You did something wrong'
    end
  end
end
