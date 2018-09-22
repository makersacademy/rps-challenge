class Results new

  attr_reader :player2_choice

  def initialize()
    @player2_choice = ["rock", "paper", "scissors"].sample
    @results_check = [{ player1: "rock", player2: "scissors", result: "win" },
    { player1: "rock", player2: "paper", result: "loose" },
    { player1: "paper", player2: "rock", result: "win" },
    { player1: "paper", player2: "scissors", result: "loose" },
    { player1: "scissors", player2: "paper", result: "win" },
    { player1: "scissors", player2: "rock", result: "loose" }]
  end

  def winner(player1_choice)
    if @player2_choice == player1_choice.downcase
      "draw"
    else
      @results_check.each do |option|
        if player1_choice.downcase == option[:player1] && @player2_choice == option[:player2]
          return "#{option[:result]}"
        end
      end
    end
  end

end
