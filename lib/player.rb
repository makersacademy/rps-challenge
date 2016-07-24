class Player

  attr_reader :name

  # private
  attr_accessor :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def choose(weapon)
    @weapon = weapon
  end

  def get_weapon
    @weapon
  end

end
