require_relative './player'
require_relative './bot'

class Game
  attr_reader :player_1, :player_2, :computer_move

  MOVES = { 'rock' => ['scissor', 'lizard'], 'paper' => ['rock', 'spock'],
           'scissor' => ['paper', 'lizard'], 'lizard' => ['spock', 'paper'],
           'spock' => ['rock', 'scissor'] }
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def sample_move
    %w[Rock Paper Scissors Lizard Spock].sample
  end

  def single_match(move)
    @computer_move = sample_move
    return 'Draw!' if move == computer_move

    MOVES[move] == computer_move ? 'You won!' : 'You lost!'
  end

  def mp_match(p1, p2)
    player_1 = @player_1
    player_2 = @player_2
    return 'Draw!' if p1 == p2

    MOVES[p1] == p2 ? "#{player_1.name} won!" : "#{player_2.name} won!"
  end
end
