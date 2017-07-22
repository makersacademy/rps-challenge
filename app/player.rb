require_relative 'weapon'
RULES = { rock: :scissors, paper: :rock, scissors: :paper }
class Player
  attr_reader :name, :weapon
  def initialize(name, weapon = Weapon.new('Please enter a valid weapon name') )
    @name = name
    @weapon = weapon
  end

  def play(weapon_name)
    valid_weapon?(weapon_name) ? @weapon = Weapon.new(weapon_name) : Weapon.new('Please enter a valid weapon name') 
  end

  def valid_weapon?(weapon_name)
    RULES.keys.include? weapon_name.to_sym
  end
end
