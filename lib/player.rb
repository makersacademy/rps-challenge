class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    raise "Invalid weapon" unless Game::WEAPONS.include? weapon
    @weapon = weapon
  end

end
