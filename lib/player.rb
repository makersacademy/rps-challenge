require_relative './game.rb'

class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def select_weapon(weapon)
    raise "That it not an option" unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

end