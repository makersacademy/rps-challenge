class Game

  attr_reader :player_1, :player_2, :rounds, :victor

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @victor = ""
  end

  def current_round(player_1_move, player_2_move)
    winner = ""
    return winner = "draw" if player_1_move == player_2_move
    case player_1_move
    when "Rock"
      if player_2_move == "Paper"
        winner = @player_2
      else
        winner = @player_1
      end
    when "Paper"
      if player_2_move == "Scissors"
        winner = @player_2
      else
        winner = @player_1
      end
    when "Scissors"
      if player_2_move == "Rock"
        winner = @player_2
      else
        winner = @player_1
      end
    end
    winner.won
    @victor = winner if winner.wins == 3
    return winner
  end
end