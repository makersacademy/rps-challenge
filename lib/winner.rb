class Winner
  def initialize
    @results = {
      "paper" => "rock",
      "scissors" => "paper",
      "rock" => "scissors"
    }
  end

  def the_winner_is(player_1, computer)
    if @results[player_1] == computer
      player_1
    elsif @results[computer] == player_1
      computer
    else
      "draw"
    end 
  end

end
