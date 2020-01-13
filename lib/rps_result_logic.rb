class RpsResult
attr_reader :result

  def result(move, computer_move)
    if move == computer_move
      return "It's a draw!"
    elsif (move == "Scissors" && computer_move == "Paper") || (move == "Rock" && computer_move == "Scissors")||(move == "Paper" && computer_move == "Rock")
      return "You win!"
    elsif (move == "Paper" && computer_move == "Scissors") || (move == "Rock" && computer_move == "Paper")||(move == "Scissors" && computer_move == "Rock")
      return "Computer wins!"
    else return "Something went wrong!"
    end
  end

end
