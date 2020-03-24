class Game

  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def computer_move
    ["Rock", "Paper", "Scissors"].sample
  end

  def winner(player_1_move, player_2_move)
    if player_1_move == player_2_move
      "Nobody...... It's a draw!"
    elsif (player_1_move == "Rock" && player_2_move == "Scissors") ||
      (player_1_move == "Scissors" && player_2_move == "Paper") ||
      (player_1_move == "Paper" && player_2_move == "Rock")
      @player_1
    else
      @player_2
    end
  end

end
