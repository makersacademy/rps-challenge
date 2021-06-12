class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def results
    determine_moves

    if @p1_move == "rock" && @p2_move == "scissors"
      return "Win"
    end
  end

  private

  def determine_moves
    @p1_move = @player_1.move
    @p2_move = @player_2.move
  end

end
