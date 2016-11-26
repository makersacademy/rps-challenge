class RSP

  def choice(users_choice, computers_choice)
    if users_choice == computers_choice
      "Draw"
    elsif users_choice == :rock && computers_choice == :scissors || users_choice == :paper && computers_choice == :rock || users_choice == :scissors && computers_choice == :paper
      "You won"
    else
      "You lose"
    end

  end


end
