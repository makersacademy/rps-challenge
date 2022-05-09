class Game
  attr_reader :result, :computer_choice

  def initalize
    @result = nil
  end

  def play(player_choice)
    player = player_choice
    computer = "rock"
    # just for testing set to "rock"

    if (player == 'scissors' && computer == 'paper') ||
      (player == 'paper' && computer == 'rock') ||
      (player == 'rock' && computer == 'scissors')
      @result = "You win!"
    elsif player == computer
      @result = "Draw!"
    else 
      @result = "The computer wins..."
    end
  end 

  # def random_choice 
  #   @computer_choice = [ "rock", "paper", "scissors"].sample
  # end
end
