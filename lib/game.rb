class Game
  
  attr_reader :computer_action

  def initialize(choice)
    @player_action = choice
    @pairs = { rock: 'paper', paper: 'scissors', scissors: 'rock' }
  end

  def random_choice
    ['rock', 'paper', 'scissors'].sample
  end

  def return_winner
    @computer_action = random_choice
    winning_choice = @pairs[@player_action.to_sym]
    if @computer_action == winning_choice
      'Computer Wins!'
    elsif @computer_action == @player_action
      'Draw'
    else
      'Player Wins!'
    end
  end

  #This function below wasn't getting rcoginised by app.rb and I have no idea why:
  # def return_computer_action
  #   @computer_action
  # end

end