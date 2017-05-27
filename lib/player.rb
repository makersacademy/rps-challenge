class Player
  attr_accessor :weapon, :name

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    validate_weapon(weapon)
    @weapon = weapon
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

  private

  def validate_weapon(weapon)
    raise 'Not valid weapon' unless Game::WEAPONS.include?(weapon.to_sym)
  end

end
