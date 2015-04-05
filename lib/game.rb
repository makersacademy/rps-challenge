require_relative 'rps_droid'
class Game
  include RpsDroid
  attr_reader :valid_moves
  def initialize
    @valid_moves = %w(Rock Paper Scissors)
  end

  def play(name, move)
    fail "I don't recognise that move, try again" unless valid_move?(move)
    computer_mv = make_move
    moves = "#{name} chose: #{move} Computer chose: #{computer_mv}, "
    return moves + "Its a draw!" if draw?(move, computer_mv)
    result = winner?(move, computer_mv) ? name : 'Computer'
    moves + "#{result} wins!"
  end

  def winner?(user_move, computer_move)
    winning_pairs = [%w(Rock Scissors), %w(Scissors Paper), %w(Paper Rock)]
    winner = winning_pairs.any? do |player_move, comp_move|
      player_move == user_move && comp_move == computer_move
    end
  end

  def draw?(user_move, computer_move)
    user_move == computer_move
  end

  def valid_move?(player_move)
    @valid_moves.any? { |move| move == player_move }
  end
end
