class Game

attr_reader :result

  def winner(player_1, player_2)
    if draw?(player_1, player_2)
      nil
    elsif first_beats_second?(player_1, player_2)
      player_1
    else
      player_2
    end
  end

  private

  def draw?(player_1, player_2)
    player_1.choice== player_2.choice
  end

  def winning_scenarios
    {"rock" => "scissors",
     "scissors" => "paper",
     "paper" => "rock"
    }
  end

  def first_beats_second?(player_1, player_2)
    self.winning_scenarios[player_1.choice].include?(player_2.choice)
  end



end
