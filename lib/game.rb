class Game

  attr_reader :player1, :player2, :win_map

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @win_map = {rock: "paper", paper: "scissors", scissors: "rock"}
  end
end
