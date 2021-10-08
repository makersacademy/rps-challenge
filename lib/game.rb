class Game

  def play
    combinations = { "scissors" => "paper", "paper" => "rock", "rock" => "scissors" }
    if @player_choice == computer_choice
      "It's a draw!"
    elsif combinations[@player_choice] == computer_choice
      "You won!"
    else
      "Computer won!"
    end
  end

  def computer_choice
    ["rock", "paper", "scissors"].sample
  end

end