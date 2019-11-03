require_relative 'game'

class Player

attr_reader :name, :player_choice

def initialize(name)
  @name = name
end

def choose_weapon(weapon)
  raise "Please select again" unless Game::WEAPONS.include? weapon.to_sym
  @player_choice = weapon.to_sym
end

end
