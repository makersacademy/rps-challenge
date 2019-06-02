class Game 
  attr_reader :outcome, :computer

  def initialize
    @outcome = nil
    @winning_combinations = {"Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper"}
    @computer = ["Rock", "Paper", "Scissors"].sample
  end

  def outcome(p_1)
    if p_1 == @computer
      "It's a tie"
    elsif @winning_combinations[p_1] == @computer
      "Player 1 wins"
    else
      "Computer wins"
    end
  end
end