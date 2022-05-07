class Game
  def initialize(choice)
    @player_action = choice
    @options = ['rock', 'paper', 'scissors']
    @pairs = { rock: 'paper', paper: 'scissors', scissors: 'rock' }
  end

  def computer_action
    $computer_choice = random_choice
  end

  def random_choice
    @options.sample
  end

  def return_winner
    computer_actioncs
    winning_choice = @pairs[@player_action.to_sym]
    if $computer_choice == winning_choice
      'Computer Wins!'
    elsif $computer_choice == @player_action
      'Draw'
    else
      'Player Wins!'
    end
  end

end