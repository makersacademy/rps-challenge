class Referee

  attr_reader :player_move, :opponent_move

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
    return 3
  end

  def announce
    winner = decide_winner
    return "You won!" if winner == 1
    return "You lost!" if winner == 2
    return "You drew!" if winner == 3
  end

end
