
class RPSGame

  def play rockpaperscissors
    player1_choice = rockpaperscissors
    case
      when player1_choice == "rock" && self.computer == "paper"
        "you loose"
      when player1_choice == "rock" && self.computer == "scissors"
        "you win"
      when player1_choice == "paper" && self.computer == "rock"
        "you win"
      when  player1_choice == "paper" && self.computer == "scissors"
        "you loose"
      when player1_choice == "scissors"  && self.computer == "rock"
        "you loose"
      when player1_choice == "scissors" && self.computer == "paper"
        "you win"
      when player1_choice == self.computer
        "you tie"
      else
        "wrong input!"
      end
  end

  def computer
    ["rock", "paper", "scissors"].sample
  end
  
end
