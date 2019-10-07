class Scores

  def initialize
    @player_1_wins = 0
    @player_2_wins = 0
  end

  def scores(result)
    if result == "Player 1 Wins"
      @player_1_wins += 1
    elsif result == "Player 2 Wins"
      @player_2_wins += 1
    end
    return "#{@player_1_wins} - #{@player_2_wins}"
  end

end
