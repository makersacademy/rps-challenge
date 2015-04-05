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
    moves + round_result(name, move, computer_mv)
  end

  private

  def round_result(name, user_move, computer_move)
    return "Its a draw!" if draw?(user_move, computer_move)
    winner = winner?(user_move, computer_move) ? name : 'Computer'
    "#{winner} wins!"
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
