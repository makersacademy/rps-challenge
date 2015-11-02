class Weapons
  WEAPONS = [:rock, :paper, :scissors]

  def random_weapon
    WEAPONS.sample
  end

  def rules( weapon1, weapon2)
    case weapon1
    when :rock
      case weapon2
      when :rock
        return :draws
      when :paper
        return :looses
      else
        #scissors
        return :wins
      end
    when :paper
      case weapon2
      when :rock
        return :wins
      when :paper
        return :draws
      else
        #scissors
        return :looses
      end
    when :scissors
      case weapon2
      when :rock
        return :looses
      when :paper
        return :wins
      else
        # scissors
        return :draws
      end
    end
  end
end