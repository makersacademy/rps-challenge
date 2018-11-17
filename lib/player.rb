class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def self.create(name)
    @player = self.new(name)
  end

  def self.instance
    @player
  end

  def add_weapon(weapon)
    @weapon = weapon
  end

end
