require_relative 'rps_droid'
class Game
  include RpsDroid
  def play(name, move)
    computer_mv = make_move
    result = winner?(move, computer_mv) == true ? name : 'Computer'
    "#{name} chose: #{move} Computer chose: #{computer_mv}, #{result} wins!"
  end

  def winner?(user_move, computer_move)
    winning_pairs = [%w(Rock Scissors), %w(Scissors Paper), %w(Paper Rock)]
    winner = winning_pairs.any? do |player_move, comp_move|
      player_move == user_move && comp_move == computer_move
    end
  end
end
