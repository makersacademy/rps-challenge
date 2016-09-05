# Understands the rules of the game.

class Game

  SHAPES = [:rock, :paper, :scissors]
  RULES = {
     rock: {rock: :draw, paper: :lose, scissors: :win},
     paper: {rock: :win, paper: :draw, scissors: :lose},
     scissors: {rock: :lose, paper: :win, scissors: :draw}
   }.freeze

  # def initialize(player1, player2)
  #   @players = [player1, player2]
  # end

  def win(player1_choice, player2_choice)
    RULES[player1_choice][player2_choice]
  end
end
