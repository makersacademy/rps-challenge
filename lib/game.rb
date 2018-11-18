class Game
  attr_reader :p_1, :p_2

  def initialize(p_1, p_2)
    @p_1 = p_1
    @p_2 = p_2
  end

  def self.create(p_1, p_2)
    @game = Game.new(p_1, p_2)
  end
  
  def self.instance
    @game
  end

  def win(verb)
    return "#{p_1.weapon.capitalize} #{verb} #{p_2.weapon}. #{p_1.name} wins!"
  end

  def lose(verb)
    return "#{p_2.weapon.capitalize} #{verb} #{p_1.weapon}. #{p_2.name} wins!"
  end

  def draw
    return "It's a draw!"
  end

  def rock
    case p_2.weapon
    when 'rock' then draw()
    when 'paper' then lose('covers')
    when 'scissors' then win('crushes')
    when 'lizard' then win('crushes')
    when 'spock' then lose('vaporizes')
    end
  end

  def paper
    case p_2.weapon
    when 'rock' then win('covers')
    when 'paper' then draw()
    when 'scissors' then lose('cuts')
    when 'lizard' then lose('eats')
    when 'spock' then win('disproves')
    end
  end

  def scissors
    case p_2.weapon
    when 'rock' then lose('crushes')
    when 'paper' then win('cuts')
    when 'scissors' then draw()
    when 'lizard' then win('decapitates')
    when 'spock' then lose('smashes')
    end
  end

  def lizard
    case p_2.weapon
    when 'rock' then lose('crushes')
    when 'paper' then win('eats')
    when 'scissors' then lose('decapitates')
    when 'lizard' then draw()
    when 'spock' then win('poisons')
    end
  end

  def spock
    case p_2.weapon
    when 'rock' then win('vaporizes')
    when 'paper' then lose('disproves')
    when 'scissors' then win('smashes')
    when 'lizard' then lose('poisons')
    when 'spock' then draw()
    end
  end

  def fight
    case p_1.weapon
    when 'rock' then rock()
    when 'paper' then paper()
    when 'scissors' then scissors()
    when 'lizard' then lizard()
    when 'spock' then spock()
    end
  end
end
