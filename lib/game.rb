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
    "#{result} wins!"
  end
end
