class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def self.play(comp_wp, player_wp)
    return :lose if RULES[comp_wp] == player_wp
    return :win if RULES[player_wp] == comp_wp
    :draw
  end

end
