class Game

  attr_reader :players

  def initialize player_1, player_2, *win_conditions
    @player_1 = player_1
    @player_2 = player_2
    @players =[@player_1, @player_2]
    @win_conditions = win_conditions[0] || { "rock, paper" => @player_2,
    "rock, scissors" => @player_1,
    "paper, scissors" => @player_2,
    "paper, rock" => @player_1,
    "scissors, rock" => @player_2,
    "scissors, paper" => @player_1,
    "scissors, scissors" => :draw,
    "rock, rock" => :draw,
    "paper, paper" => :draw
  }
  end

  def reveal_winner
    raise "Both players need to throw gesture" if find_winner == nil
    find_winner == :draw ? "It's a draw!" : "#{find_winner.name} is the winner!"
  end

  def find_winner
    @win_conditions[@player_1.gesture.to_s + ", " + @player_2.gesture.to_s]
  end

end