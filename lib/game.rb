class Game
  # Maybe make the won thing an alias which has a ?
  attr_reader :player_1, :player_2, :won, :player_1_wins, :player_2_wins

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @won = nil
    @player_1_wins = 0
    @player_2_wins = 0
  end

  # eventually make this private and have another method call it
  # Currently can be called multiple times(fail if counter exceeds some number)
  # consider making a checker function to dry out failures
  def victory(player)
    fail "That's not a player!" unless player == player_1 || player == player_2
    @won = "#{player} has won!"
  end

  def win_round(player)
    fail "That's not a player!" unless player == player_1 || player == player_2
    player == player_1 ? @player_1_wins += 1 : @player_2_wins += 1
    player_1_wins + player_2_wins >= 3 ? winner : nil
  end

  def winner
    @player_1_wins > @player_2_wins ? victory(player_1) : victory(player_2)
  end
end
