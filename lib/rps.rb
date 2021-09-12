def decide_winner(move, comp_move)
  if move == comp_move
    "It's a draw! What are the odds?"
  elsif move == "rock"
    case comp_move
    when "paper"
      "Better luck next time! Paper covers rock!"
    when "scissors"
      "Congratulations, you win! Rock crushes scissors!"
    end
  elsif move == "paper"
    case comp_move
    when "scissors"
      "Better luck next time! Scissors cuts paper!"
    when "rock"
      "Congratulations, you win! Paper covers rock!"
    end
  elsif move == "scissors"
    case comp_move
    when "rock"
      "Better luck next time! Rock crushes scissors!"
    when "rock"
      "Congratulations, you win! Scissors cuts paper!"
    end
  else
    "You never win any games you don't play.<br>Mark Cuban.<br><br>Make sure you select a move next time!"
  end
end
