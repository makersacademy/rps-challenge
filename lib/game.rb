class Game
  attr_reader :player_1, :player_2, :won, :player_1_wins, :player_2_wins

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @won = false
    @player_1_wins = 0
    @player_2_wins = 0
    @choices = %w(rock paper scissors)
  end

  def round
    return "Draw" if draw?
    index = @choices.index(player_2.choice)
    if player_1.choice == @choices[index - 1]
      win_round(player_2)
    else
      win_round(player_1)
    end
  end

  private

  def victory(player)
    fail "That's not a player" unless player == player_1 || player == player_2
    @won = "#{player} has won!"
  end

  def win_round(player)
    fail "That's not a player" unless player == player_1 || player == player_2
    player == player_1 ? @player_1_wins += 1 : @player_2_wins += 1
    player_1_wins + player_2_wins >= 3 ? winner : nil
  end

  def draw?
    player_1.choice == player_2.choice
  end

  def winner
    @player_1_wins > @player_2_wins ? victory(player_1) : victory(player_2)
  end
end
