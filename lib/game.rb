class Game
  RULES = { Rock: :Scissors, Scissors: :Paper, Paper: :Rock }

  # def computer_move
  #   %w(Rock Paper Scissors).sample
  # end

  def winner move1, move2
    return 'It is a draw' if move1 == move2
    return 'You win' if RULES[move1.to_sym] == move2.to_sym
    'Computer wins'
  end
end
