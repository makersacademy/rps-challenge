class Game
  attr_reader :rps, :computer_rps, :result
  def initialize
    @rps = ["rock", "paper", "scissors"]
    @computer_rps = []
    @result = nil
  end

  def compare(player_1_rps)
    @computer_rps << @rps.sample
    if @computer_rps.first == "rock" && player_1_rps == "scissors"
      @result = :lost
    elsif @computer_rps.first == "rock" && player_1_rps == "paper"
      @result = :win
    elsif @computer_rps.first == "paper" && player_1_rps == "rock"
      @result = :lost
    elsif @computer_rps.first == "paper" && player_1_rps == "scissors"
      @result = :win
    elsif @computer_rps.first == "scissors" && player_1_rps == "paper"
      @result = :lost
    elsif @computer_rps.first == "scissors" && player_1_rps == "rock"
      @result = :win
    elsif @computer_rps.first == player_1_rps
      @result = :draw
    else
      @result = :error
    end
  end
end
