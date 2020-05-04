class Scoreboard

  attr_reader :player_1_score, :player_2_score

  def initialize
    @player_1_score = 0
    @player_2_score = 0
  end

  def add_score(result)
    if result == "Player 1 Wins"
      @player_1_score += 1
    elsif result == "Player 2 Wins"
      @player_2_score += 1
    end
  end
end
