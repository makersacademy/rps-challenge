class Game
  RULES = { rock: :scissors, scissors: :paper, paper: :rock }

  def winner move1, move2
    return :draw if move1 == move2
    RULES[move1.to_sym] == move2.to_sym ? :win : :lose
  end
end
