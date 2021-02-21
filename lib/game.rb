class Game

  def result
    if $player_choice == "Rock" && $comp_choice == :Scissors
      "Rock destroys scissors. You won!"
    elsif $player_choice == "Scissors" && $comp_choice == :Rock
      "Rock destroys scissors. You lost! :("
    elsif $player_choice == "Paper" && $comp_choice == :Rock
      "Paper wraps rock. You won!"
    elsif $player_choice == "Rock" && $comp_choice == :Paper
      "Paper wraps rock. You lost! :("
    elsif $player_choice == "Scissors" && $comp_choice == :Paper
      "Scissors cut paper. You won!"
    elsif $player_choice == "Paper" && $comp_choice == :Scissors
      "Scissors cut paper. You lost! :("
    else
      "You both drew the same hand!"
    end
  end
end
