class Player
  attr_accessor :weapon, :name

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    @weapon = weapon
  end

end
