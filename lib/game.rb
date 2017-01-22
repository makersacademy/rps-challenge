class Game

  WEAPONS = [:rock, :paper, :scissors]
  RULES = {rock: :scissors, scissors: :paper, paper: :rock }

  attr_reader :player_01, :player_02, :result

  def initialize(*params)
    @player_01 = params[0]
    @player_02 = params[1]
  end

  def result
    case
    when RULES[player_01.weapon] == player_02.weapon
      :p1
    when RULES[player_02.weapon] == player_01.weapon
      :p2
    when player_01.weapon == player_02.weapon
      :draw
    end
  end

end
