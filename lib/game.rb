class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    # player 1 lookup left, player two right.
    rules = {
      rock: { rock: draw, paper: player_two_wins, scissors: player_one_wins},
      paper: { rock: player_one_wins, paper: draw, scissors: player_two_wins},
      scissors: { rock: player_two_wins, paper: player_one_wins, scissors: draw}
    }
    rules[player_choice(@player1)][player_choice(@player2)]
  end

  private
  def player_choice(player)
    player.choice.to_sym
  end

  def player_one_wins
    "#{@player1.name} wins, #{@player2.name} loses!"
  end

  def player_two_wins
    "#{@player2.name} wins, #{@player1.name} loses!"
  end

  def draw
    "It's a draw"
  end
end
