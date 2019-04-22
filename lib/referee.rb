class Referee

  def initialize(player_move, opponent_move)
    @player_move = player_move
    @opponent_move = opponent_move
  end

  def decide_winner
    return 1 if @player_move == "Rock" && @opponent_move == "Scissors"
    return 1 if @player_move == "Paper" && @opponent_move == "Rock"
    return 1 if @player_move == "Scissors" && @opponent_move == "Paper"
    return 2 if @player_move == "Rock" && @opponent_move == "Paper"
    return 2 if @player_move == "Paper" && @opponent_move == "Scissors"
    return 2 if @player_move == "Scissors" && @opponent_move == "Rock"
    else return 3
  end

  def announce
    winner = decide_winner
    if winner == 1
      return "You won!"
    elsif winner == 2
      return "You lost!"
    elsif winner == 3
      return "You drew!"
    end
  end

end
