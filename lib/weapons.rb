class Weapons
  WEAPONS = [:rock, :paper, :scissors]

  def random_weapon
    WEAPONS.sample
  end

  def rules( weapon1, weapon2)
    if weapon1 == :rock
      if weapon2 == :rock
        return :draws
      elsif weapon2 == :paper
        return :looses
      else
        #scissors
        return :wins
      end
    elsif weapon1 == :paper
      if weapon2 == :rock
        return :wins
      elsif weapon2 == :paper
        return :draws
      else
        #scissors
        return :looses
      end
    else weapon1 == :scissors
      if weapon2 == :rock
        return :looses
      elsif weapon2 == :paper
        return :wins
      else
        # scissors
        return :draws
      end
    end
  end
end