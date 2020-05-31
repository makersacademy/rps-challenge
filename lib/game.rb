class Game
  def initialize(player_move, pc_move)
    @player_move = player_move
    @pc_move = pc_move
  end

  def result
    if @player_move == @pc_move
      "Draw"
    elsif @player_move == "Rock" && @pc_move == "Scissors"
      "Player"
    elsif @player_move == "Rock" && @pc_move == "Paper"
      "Computer"
    elsif @player_move == "Scissors" && @pc_move == "Rock"
      "Computer"
    elsif @player_move == "Scissors" && @pc_move == "Paper"
      "Player"
    elsif @player_move == "Paper" && @pc_move == "Rock"
      "Player"
    elsif @player_move == "Paper" && @pc_move == "Scissors"
      "Computer"
    end
  end


end
