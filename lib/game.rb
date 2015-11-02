class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper}

  def self.play(player, comp)
    return :win if RULES[player] == comp
    return :lose if RULES[comp] == player
    :draw
  end

end
