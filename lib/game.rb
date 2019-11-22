class Game

  def initialize
    @game_rules = {
      rock: { rock: "It's a draw", paper: "Player 2 wins", scissors: "Player 1 wins" },
      paper: { rock: "Player 1 wins", paper: "It's a draw", scissors: "Player 2 wins" },
      scissors: { rock: "Player 2 wins", paper: "Player 1 wins", scissors: "It's a draw" }
    }
  end

  def compare(player1_choice, player2_choice)
    @game_rules[player1_choice.downcase.to_sym][player2_choice.downcase.to_sym]
  end

end
