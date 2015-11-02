class Game
  RULES = { rock: :scissors, scissors: :paper, paper: :rock }

  def winner move1, move2
    return 'It is a draw' if move1 == move2
    return 'You win' if RULES[move1.to_sym] == move2.to_sym
    'Computer wins'
  end
end
