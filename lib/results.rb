class Results

  attr_reader :player2

  def initialize
    @player2 = ["rock", "paper", "scissors"].sample
    @results_check = [{ player1: "rock", player2: "scissors", result: "win" },
    { player1: "rock", player2: "paper", result: "loose" },
    { player1: "rock", player2: "rock", result: "draw" },
    { player1: "paper", player2: "rock", result: "win" },
    { player1: "paper", player2: "scissors", result: "loose" },
    { player1: "paper", player2: "paper", result: "draw" },
    { player1: "scissors", player2: "paper", result: "win" },
    { player1: "scissors", player2: "rock", result: "loose" },
    { player1: "scissors", player2: "scissors", result: "draw" }]
  end

  def winner(player1)
    @results_check.each { |result|
      if player1 == result[:player1] && @player2 == result[:player2]
        return result[:result]
      end
    }
  end

end
