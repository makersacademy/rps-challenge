require_relative './opponent'

class Fight

  def rps(weapon, opponent_weapon)
    beatmap = { scissors: :paper, paper: :rock, rock: :scissors }
    if weapon == opponent_weapon
      :draw
    elsif beatmap[weapon] == opponent_weapon
      :win
    else
      :lose
    end
  end
end
