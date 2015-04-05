require_relative 'rps_droid'
class Game
  include RpsDroid
  def play(name, move)
    computer_mv = make_move
    winning_pairs = [%w(Rock Scissors), %w(Scissors Paper), %w(Paper Rock)]
    winner = winning_pairs.any? do |player_move, comp_move|
      player_move == move && comp_move == computer_mv
    end
    result = winner == true ? name : 'Computer'
    "#{name} chose: #{move} Computer chose: #{computer_mv}, #{result} wins!"
  end
end
