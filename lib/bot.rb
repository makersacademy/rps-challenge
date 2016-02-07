require_relative 'weapon'

class Bot
  DEFAULT_NAMES = ['Mr Robot', 'Sir Mix-a-Bot', 'Mechagodzilla']
  attr_reader :name, :weapon

  def initialize(name = DEFAULT_NAMES.sample, weapon_klass = Weapon)
    @name = name
    @weapon_klass = weapon_klass
    @weapon = nil
  end

  def choose_weapon
    @weapon = weapon_klass.new(Game::WEAPONS.sample)
  end

  private
  attr_reader :weapon_klass
end
