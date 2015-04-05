require_relative 'turns'

class Game
  RULES = {
    scissors: 'paper',
    paper: 'rock',
    rock: 'scissors'
  }
  attr_reader :player1, :player2, :players
  def initialize(player_1, player_2, turns)
    @player1 = player_1
    @player2 = player_2
    @turns = turns
  end

  def play
    return 'DRAW!' if @player1.weapon == @player2.weapon
    if @player1.weapon == RULES[player2.weapon.to_sym]
      puts 'Player 2 Wins!!!'
      @turns.player_2
    else
      puts 'Player 1 Wins!!!'
      @turns.player_1
    end
    @turns.record_play
  end
end
