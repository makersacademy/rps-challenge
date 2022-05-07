class Game

  def computer_picked
    OPTIONS.sample
  end

  def play(choice)
    p1 = choice
    p2 = computer_picked

    if (p1 == "scissors" && p2 == "paper") || (p1 == "rock" && p2 == "scissors") || 
      (p1 == "paper" && p2 == "rock")
        "You have won!"
    elsif (p1 == "scissors" && p2 == "rock") || (p1 == "rock" && p2 == "paper") || 
      (p1 == "paper" && p2 == "scissors")
        "You have lost!"
    else 
        "It's a draw"
    end
  end



  private

  OPTIONS = ['rock', 'paper', 'scissors']

end