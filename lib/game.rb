class Game
  RULES = {
    scissors: 'paper',
    paper: 'rock',
    rock: 'scissors'
  }
  attr_reader :player1, :player2, :players
  def initialize(player_1, player_2)
    @player1 = player_1
    @player2 = player_2
  end

  def play
    return 'DRAW!' if @player1.weapon == @player2.weapon
    if @player1.weapon == RULES[player2.weapon.to_sym]
      'Player2 wins'
    else
      'Player 1 wins'
    end
  end
end
