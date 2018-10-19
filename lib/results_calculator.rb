class ResultsCalculator
  MOVES = {
    "ROCK" => "SCISSORS",
    "PAPER" => "ROCK",
    "SCISSORS" => "PAPER"
  }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    return @player_1.name if MOVES[@player_1.weapon] == @player_2.weapon
    return @player_2.name if MOVES[@player_2.weapon] == @player_1.weapon
    "It's a draw!"
  end
end
