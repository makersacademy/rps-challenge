class Weapons
  def drawn(game)
    case game.one.weapon
      when :rock then rock(game)
      when :paper then paper(game)
      when :scissors then scissors(game)
      when :lizard then lizard(game)
      when :spock then spock(game)
    end
  end

  def rock(game)
    case game.two.weapon
      when :rock then game.draw
      when :paper then game.lose('covers')
      when :scissors then game.win('crushes')
      when :lizard then game.win('crushes')
      when :spock then game.lose('vaporizes')
    end
  end

  def paper(game)
    case game.two.weapon
      when :rock then game.win('covers')
      when :paper then game.draw
      when :scissors then game.lose('cuts')
      when :lizard then game.lose('eats')
      when :spock then game.win('disproves')
    end
  end

  def scissors(game)
    case game.two.weapon
      when :rock then game.lose('crushes')
      when :paper then game.win('cuts')
      when :scissors then game.draw
      when :lizard then game.win('decapitates')
      when :spock then game.lose('smashes')
    end
  end

  def lizard(game)
    case game.two.weapon
      when :rock then game.lose('crushes')
      when :paper then game.win('eats')
      when :scissors then game.lose('decapitates')
      when :lizard then game.draw
      when :spock then game.win('poisons')
    end
  end

  def spock(game)
    case game.two.weapon
      when :rock then game.win('vaporizes')
      when :paper then game.lose('disproves')
      when :scissors then game.win('smashes')
      when :lizard then game.lose('poisons')
      when :spock then game.draw
    end
  end
end
