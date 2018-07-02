class Game
  WEAPONS = ["rock", "paper", "scissors"]

  attr_reader :rps, :computer_rps, :result
  def initialize
    @result = nil
  end

  def compare(player_1_rps)
    # @computer_rps << WEAPONS.sample
    if WEAPONS.sample == "rock" && player_1_rps == "scissors"
      @result = :lost
    elsif WEAPONS.sample == "rock" && player_1_rps == "paper"
      @result = :win
    elsif WEAPONS.sample == "paper" && player_1_rps == "rock"
      @result = :lost
    elsif WEAPONS.sample == "paper" && player_1_rps == "scissors"
      @result = :win
    elsif WEAPONS.sample == "scissors" && player_1_rps == "paper"
      @result = :lost
    elsif WEAPONS.sample == "scissors" && player_1_rps == "rock"
      @result = :win
    elsif WEAPONS.sample == player_1_rps
      @result = :draw
    else
      @result = :error
    end
  end
end
