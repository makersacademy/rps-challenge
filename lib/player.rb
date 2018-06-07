class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    raise "Invalid weapon" unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

end
