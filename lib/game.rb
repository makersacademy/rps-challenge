class Game

  RULES = { rock:     {rock: :draw, scissors: :win,  paper: :lose},
            paper:    {rock: :win,  scissors: :lose, paper: :draw},
            scissors: {rock: :lose, scissors: :draw, paper: :win}
          }

  def generate_move
    %w(rock paper scissors).sample.to_sym
  end

  def outcome player_move, computer_move
    RULES[player_move][computer_move]
  end

end
