class Game

  def outcome(p_choice, c_choice)
    if p_choice == c_choice
      "This round is a draw!"
    elsif p_choice == "rock" && c_choice == "scissors"
      "You have won!"
    elsif p_choice == "paper" && c_choice == "rock"
      "You have won!"
    elsif p_choice == "scissors" && c_choice == "paper"
      "You have won!"
    elsif c_choice == "paper" && p_choice == "rock" 
      "Computer has won!"
    elsif c_choice == "scissors" && p_choice == "paper"
      "Computer has won!"
    elsif c_choice == "rock" && p_choice == "scissors"
      "Computer has won!"
    end
  end
end
