require_relative 'weapon'

class Game
  attr_reader :one, :two, :weapons

  def initialize(one, two)
    @one = one
    @two = two
    @weapons = Weapons.new
  end

  def self.create(one, two)
    @game = Game.new(one, two)
  end
  
  def self.instance
    @game
  end

  def fight
    weapons.drawn(self)
  end
  
  def win(verb)
    "#{one.weapon.capitalize} #{verb} #{two.weapon}. #{one.name} win#{end_s}!"
  end

  def lose(verb)
    "#{two.weapon.capitalize} #{verb} #{one.weapon}. #{two.name} wins!"
  end
  
  def draw
    "It's a draw!"
  end
  
  private 
  
  def end_s
    one.name == 'You' ? '' : 's'
  end
end
