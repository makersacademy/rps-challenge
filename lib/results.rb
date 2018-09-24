class Results

  attr_reader :player2

  def initialize
    @player2 = ["rock", "paper", "scissors"].sample
    @results_check = [{ player1: "rock", player2: "scissors", result: "win" },
    { player1: "rock", player2: "paper", result: "lose" },
    { player1: "rock", player2: "rock", result: "draw" },
    { player1: "paper", player2: "rock", result: "win" },
    { player1: "paper", player2: "scissors", result: "lose" },
    { player1: "paper", player2: "paper", result: "draw" },
    { player1: "scissors", player2: "paper", result: "win" },
    { player1: "scissors", player2: "rock", result: "lose" },
    { player1: "scissors", player2: "scissors", result: "draw" }]
  end

  def message(player1)
    if win_lose_draw(player1) == "win"
      "Congratulations, you've won!"
    elsif win_lose_draw(player1) == "lose"
      "You lose!"
    else
      "It's a draw"
    end
  end

  private

  def win_lose_draw(player1)
    @results_check.each { |result|
      if player1 == result[:player1] && @player2 == result[:player2]
        return result[:result]
      end
    }
  end

end
