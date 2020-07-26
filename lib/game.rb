class Game

  def result
    if $option == $opponent
      "It's a draw..."
    elsif $option == "Rock" && $opponent == "Scissors"
      "You win!"
    elsif $option == "Paper" && $opponent == "Rock"
      "You win!"
    elsif $option == "Scissors" && $opponent == "Paper"
      "You win!"
    else
      "You lose :("
    end
  end

end
