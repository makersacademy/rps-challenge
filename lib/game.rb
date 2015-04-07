require_relative 'turns'

class Game
  RULES = {
    scissors: 'paper',
    paper: 'rock',
    rock: 'scissors'
  }
  attr_reader :players, :player1, :player2
  attr_accessor :player_1, :player_2
  def initialize(player_1 = nil, player_2 = nil, options = {})
    @player1 = player_1
    @player2 = player_2
    @turns = options.fetch(:turns, nil)
  end

  def add_player player
    @player1 ? @player2 = player : @player1 = player
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
