class Game

  def initialize 
    @choices = ["rock", "paper", "scissors"]
  end

  def computer_random_choice
    @choices.sample
  end



  def the_winner(player,computer)
    if player == computer
      "It is a tie"
    elsif computer_win?
      "You lose"
    else
      "Well Done, you won!"
    end
  end


  

  def computer_win?(player,computer)
    (player == "rock" && computer == "paper") ||
    (player == "paper" && computer == "scissors") ||
    (player == "scissors" && computer == "rock") 
  end


end