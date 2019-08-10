class Game
  attr_reader :weapon

  def initialize(weapon=nil)
    @weapon = weapon
  end

  def self.create(weapon)
    @game = Game.new(weapon)
  end

  def self.instance
    @game
  end

end
