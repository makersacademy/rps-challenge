require_relative './player'
require_relative './bot'

class Game
  attr_reader :player_1, :player_2, :computer_move
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def sample_move
    %w[Rock Paper Scissors].sample
  end

  def match(move)
    winning_moves = {
      'rock' => 'scissors',
      'scissors' => 'paper',
      'paper' => 'rock'
    }
    @computer_move = sample_move
    return 'Draw!' if move == computer_move

    winning_moves[move] == computer_move ? 'You won!' : 'You lost!'
  end
end
