class Winner

  def result_calc(player, computer)
    player.to_s
    computer.to_s
    if player == "Scissors" && computer == "Scissors" || player == "Rock" && computer == "Rock" || player == "Paper" && computer == "Paper"
      "No one! It's a draw!"
    elsif player == "Scissors" && computer == "Paper" || player == "Rock" && computer == "Scissors" || player == "Paper" && computer == "Rock"
      "You, you brilliant bastard."
    else
      "The computer :("
    end
  end

end
