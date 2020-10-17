class ResultsCalculator
  attr_reader :player_1_move, :player_2_move

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_move = player_1.move
    @player_2_move = player_2.move
    @beats = { "Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock" }
  end

  def result
    if @player_2.name == "Computer"
      computer_result
    else
      multiplayer_result
    end
  end

  def multiplayer_result
    return "It's a Draw" if tie
    return "#{@player_2.name} Wins" if player_2_wins
    return "#{@player_1.name} Wins" if player_1_wins
  end

  def computer_result
    return "It's a Draw" if tie
    return "The Computer Wins" if player_2_wins
    return "You Win" if player_1_wins
  end
  private 

  def tie
    @player_1_move == @player_2_move
  end

  def player_2_wins
    @player_2_move == @beats[@player_1_move]
  end

  def player_1_wins
    @player_1_move = @beats[@player_2_move]
  end
end
