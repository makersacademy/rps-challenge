class Game
  def choose_move
    rand(3)
  end

  def translate_move(number)
    moves = %w(Rock Paper Scissors)
    moves[number]
  end

  def computer_move
    translate_move(choose_move)
  end

  def play(move, computer_move)
    winning_pairs = [%w(Rock Scissors), %w(Scissors Paper), %w(Paper Rock)]
    winner = winning_pairs.any? do |player_move, comp_move|
      player_move == move && comp_move == computer_move
    end
    winner == true ? 'Player' : 'Computer'
  end
end
