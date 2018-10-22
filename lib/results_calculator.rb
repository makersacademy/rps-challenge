class ResultsCalculator
  MOVES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    return :player_1_wins if MOVES[@player_1.weapon] == @player_2.weapon
    return :player_2_wins if MOVES[@player_2.weapon] == @player_1.weapon
    :draw
  end
end
