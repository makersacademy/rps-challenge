class Game
  def initialize(choice)
    @player_action = choice
    @options = ['rock', 'paper', 'scissors']
    @pairs = { rock: 'paper', paper: 'scissors', scissors: 'rock' }
  end

  def computer_action
    @computer_action = random_choice
  end

  def random_choice
    @options.sample
  end

  def return_winner
    computer_action
    winning_choice = @pairs[@player_action.to_sym]
    if @computer_action == winning_choice
      'Computer Wins!'
    elsif @computer_action == @player_action
      'Draw'
    else
      'Player Wins!'
    end
  end
  
end