class Game
  def play(name, move, computer_mv)
    winning_pairs = [%w(Rock Scissors), %w(Scissors Paper), %w(Paper Rock)]
    winner = winning_pairs.any? do |player_move, comp_move|
      player_move == move && comp_move == computer_mv
    end
    result = winner == true ? name : 'Computer'
    "#{result} wins!"
  end
end
