class Game 
  attr_reader :result, :computer

  def initialize
    @result = nil
    @winning_combinations = {"Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper"}
    @computer = ["Rock", "Paper", "Scissors"].sample
  end

  def outcome(p_1)
    if p_1 == @computer
      @result = "It's a tie"
    elsif @winning_combinations[p_1] == @computer
      @result = "Player 1 wins"
    else
      @result = "Computer wins"
    end
  end
end
