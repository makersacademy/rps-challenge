class Game

  def self.determine_result(user_choice, computer_choice)
    return "You draw!" if user_choice == computer_choice
    if (user_choice == "Rock" && computer_choice == "Scissors") || (user_choice == "Paper" && computer_choice == "Rock") || (user_choice == "Scissors" && computer_choice == "Paper")
      "You win!"
    else
      "You lose!"
    end
  end

  def self.computer_choice
    ["Rock","Paper","Scissors"].sample
  end

end
