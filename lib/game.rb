class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def results
    determine_moves

    return "Draw" if draw?

    if @p1_move == "rock" && @p2_move == "scissors"
      return "Win"
    elsif @p1_move == "rock" && @p2_move == "paper"
      return "Lose"
    elsif @p1_move == "paper" && @p2_move == "rock"
      return "Win"
    elsif @p1_move == "paper" && @p2_move == "scissors"
      return "Lose"
    elsif @p1_move == "scissors" && @p2_move == "paper"
      return "Win"
    elsif @p1_move == "scissors" && @p2_move == "rock"
      return "Lose"
    end

  end

  private

  def determine_moves
    @p1_move = @player_1.move
    @p2_move = @player_2.move
  end

  def draw?
    @p1_move == @p2_move
  end

end
