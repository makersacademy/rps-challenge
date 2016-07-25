class Game
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon(weapon)
    @weapon = weapon
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

end
