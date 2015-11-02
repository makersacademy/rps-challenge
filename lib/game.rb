class Game
  RULES = { rock: :scissors, scissors: :paper, paper: :rock }

  def winner player_move, computer_move
    return :draw if player_move == computer_move
    RULES[player_move.to_sym] == computer_move.to_sym ? :win : :lose
  end
end
