class Player
  attr_accessor :weapon, :name

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon)
    validate_weapon(weapon)
    @weapon = weapon.downcase.to_sym
  end

  private

  def validate_weapon(weapon)
    raise 'Not valid weapon' unless Game::WEAPONS.include?(weapon.downcase.to_sym)
  end

end
