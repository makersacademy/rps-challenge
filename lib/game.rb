
class Game 

  def result(player, computer)
    if player == "Rock" && computer == "Scissors"
      "Rock beats Scissors, you win!" 
    elsif player == "Paper" && computer == "Rock"
      "Paper beats Rock, you win!"
    elsif player == "Scissors" && computer == "Paper"
      "Scissors beats Paper, you win!"
    elsif player == computer
      "Draw!"
    else "#{computer} beats #{player}, you lose!"
    end
  end 

end 
