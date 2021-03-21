class ExplainWinner

  def explanation_code(player1turn,player2turn)
    if (player1turn == "Rock" && player2turn == "Paper") || (player2turn == "Rock" && player1turn == "Paper")
      @explanation_code = "Rock_Paper"
    elsif (player1turn == "Rock" && player2turn == "Scissors") || (player2turn == "Scissors" && player1turn == "Rock")
      @explanation_code = "Rock_Scissors"
    elsif (player1turn == "Scissors" && player2turn == "Paper") || (player2turn == "Paper" && player1turn == "Scissors")
      @explanation_code = "Paper_Scissors"
    elsif (player1turn == "Rock" && player2turn == "Spock") || (player2turn == "Spock" && player1turn == "Rock")
      @explanation_code = "Rock_Spock"
    elsif (player1turn == "Rock" && player2turn == "Lizard") || (player2turn == "Lizard" && player1turn == "Rock")
      @explanation_code = "Rock_Lizard"
    elsif (player1turn == "Lizard" && player2turn == "Spock") || (player2turn == "Spock" && player1turn == "Lizard")
      @explanation_code = "Lizard_Spock"
    elsif (player1turn == "Scissors" && player2turn == "Spock") || (player2turn == "Spock" && player1turn == "Scissors")
      @explanation_code = "Scissors_Spock"
    elsif (player1turn == "Paper" && player2turn == "Spock") || (player2turn == "Spock" && player1turn == "Paper")
      @explanation_code = "Paper_Spock"
    elsif (player1turn == "Lizard" && player2turn == "Paper") || (player2turn == "Paper" && player1turn == "Lizard")
      @explanation_code = "Lizard_Paper"
    elsif (player1turn == "Lizard" && player2turn == "Scissors") || (player2turn == "Scissors" && player1turn == "Lizard")
      @explanation_code = "Lizard_Scissors"
    else
      @explanation_code = "Equal"
    end
    return calc_explanation
  end

  def calc_explanation
    case @explanation_code
    when "Rock_Paper" then @explanation = "Paper covers Rock!"
    when "Rock_Scissors" then @explanation = "Rock blunts Scissors!"
    when "Paper_Scissors" then @explanation = "Scissors cut Paper!"
    when "Rock_Spock" then @explanation = "Spock vapourises Rock!"
    when "Rock_Lizard" then @explanation = "Rock crushes Lizard!"
    when "Lizard_Spock" then @explanation = "Lizard poisons Spock!"
    when "Scissors_Spock" then @explanation = "Spock smashes Scissors!"
    when "Paper_Spock" then @explanation = "Paper disproves Spock!"
    when "Lizard_Paper" then @explanation = "Lizard eats Paper!"
    when "Lizard_Scissors" then @explanation = "Scissors cut Lizard's head off!"
    when "Equal" then @explanation = "Great minds think alike!"
    end
    return @explanation
  end
end
