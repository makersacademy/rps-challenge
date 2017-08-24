require_relative 'computer'
require_relative 'player'
class Game
  attr_reader :player_1, :player_2, :result, :rules #, :weapons
  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
      rock: { rock: :draw, paper: :lose, scissors: :win },
      paper: { rock: :win, paper: :draw, scissors: :lose },
      scissors: { rock: :lose, paper: :win, scissors: :draw },
    }

  def initialize(player_1 = Player.new, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
    @rules = RULES
  end

  def result
    rules[@player_1.weapon][@player_2.weapon]
  end
end
