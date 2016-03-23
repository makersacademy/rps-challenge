class Player
  attr_reader :weapon, :name
  def initialize(name, weapon)
    @name = name
    pick_weapon(weapon.to_sym)
  end

  def self.add_player(name, weapon)
    @player = Player.new(name, weapon)
  end

  def self.current_player
    @player
  end

  private

  def pick_weapon(weapon)
    raise 'not a possible weapon' unless Game::WEAPONS.include? weapon
    @weapon = weapon
  end
end
