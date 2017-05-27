
require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :current_turn, :next_turn, :players

  def self.start(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  def initialize(player1, player2)
    @current_turn = player1
    @next_turn = player2
  end

  def win(player)
    player.win_round
  end

  def computer_play
    @next_turn.computer_moves.sample
  end

end
