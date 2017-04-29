require_relative 'player'

class Game

  attr_reader :computer_moves, :current_turn, :next_turn, :players

  def self.start(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  def initialize(player1, player2)
    @current_turn = player1
    @next_turn = player2
    @computer_moves = ['scissors', 'paper', 'rock']
  end

  def auto_play
    @computer_moves.sample
  end

  def win(player)
    player.win_round
  end

end
