class Score
  attr_reader :computer_score

  def initialize(player_score)
    @turn_options = ["Rock", "Paper", "Scissors"]
    @player_score = player_score
  end

  def computer_turn
    @turn_options.sample
  end

  def result
    # need full game logic
    @computer_score = computer_turn
    if @computer_score == "Scissors"
      "Congratulations, you win Matt!"
    elsif @computer_score == "Paper"
      "Computer wins!"
    else
      "A draw!"
    end
  end
end