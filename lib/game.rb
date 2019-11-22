class Game

  def initialize(player1, player2)
    @players = [player1, player2]

    # Sets the rules for which player wins for each combination
    @game_rules = {
      rock: { rock: "It's a draw", paper: "#{@players[1].name} wins", scissors: "#{@players[0].name} wins" },
      paper: { rock: "#{@players[0].name} wins", paper: "It's a draw", scissors: "#{@players[1].name} wins" },
      scissors: { rock: "#{@players[1].name} wins", paper: "#{@players[0].name} wins", scissors: "It's a draw" }
    }
  end

  def compare(player1_choice, player2_choice)
    @game_rules[player1_choice.downcase.to_sym][player2_choice.downcase.to_sym]
  end

  def player1
    @players[0].name
  end

  def player2
    @players[1].name
  end

end
