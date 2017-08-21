class Game
  attr_reader :player_1, :player2, :game, :result
  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
      rock: { rock: :draw, paper: :lose, scissors: :win },
      paper: { rock: :win, paper: :draw, scissors: :lose },
      scissors: { rock: :lose, paper: :win, scissors: :draw },
    }

  def initalize(player_1 = Player.new, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  def result
    RULES[@player1.weapon][@player_2.weapon]
  end
end
