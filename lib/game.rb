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
    when 'scissors' then win('blunts')
    end
  end

  def paper
    case p_2.weapon
    when 'rock' then win('covers')
    when 'paper' then draw()
    when 'scissors' then lose('cut')
    end
  end

  def scissors
    case p_2.weapon
    when 'rock' then lose('blunts')
    when 'paper' then win('cut')
    when 'scissors' then draw()
    end
  end

  def fight
    case p_1.weapon
    when 'rock' then rock()
    when 'paper' then paper()
    when 'scissors' then scissors()
    end
  end
end
