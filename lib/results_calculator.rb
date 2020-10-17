class ResultsCalculator
  attr_reader :player_1_move, :player_2_move

  def initialize(player_1, player_2)
    @player_1_move = player_1.move
    @player_2_move = player_2.move
    @beats = { "Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock" }
  end

  def result
    return "It's a Draw" if tie
    return "The Computer Wins" if computer_wins
    return "You Win" if user_wins
  end

  private 

  def tie
    @player_1_move == @player_2_move
  end

  def computer_wins
    @player_2_move == @beats[@player_1_move]
  end

  def user_wins
    @player_1_move = @beats[@player_2_move]
  end
end
