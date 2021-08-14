class GamePlay

  def random_number
    rand(1..3)
  end

  def computer_rps
    case random_number
      when 1
        "Rock"
      when 2
        "Paper"
      else
        "Scissors"
    end
  end

  def game_result(player_choice)
    if player_choice.downcase == "rock" && computer_rps == "Scissors" ||
      player_choice.downcase  == "paper" && computer_rps == "Rock" ||
      player_choice.downcase  == "scissors" && computer_rps == "Paper"  
      "Congrats, you win!"
    elsif player_choice.downcase  == computer_rps.downcase
      "Its a tie!"
    else
      "You loose!"
    end
  end

end