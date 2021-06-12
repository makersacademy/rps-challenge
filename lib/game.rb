class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def results
    determine_moves
    return "Draw" if same_moves?
    
    return win_scenario? ? "Win" : "Lose"
  end

  private

  def determine_moves
    @p1_move = @player_1.move
    @p2_move = @player_2.move
  end

  def same_moves?
    @p1_move == @p2_move
  end

  def rock_and_scissors?
    @p1_move == "rock" && @p2_move == "scissors"
  end

  def paper_and_rock?
    @p1_move == "paper" && @p2_move == "rock"
  end
  
  def scissors_and_paper?
    @p1_move == "scissors" && @p2_move == "paper"
  end

  def win_scenario?
    rock_and_scissors? || paper_and_rock? || scissors_and_paper?
  end

end
