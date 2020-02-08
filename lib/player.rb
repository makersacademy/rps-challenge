# require 'game'

class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choose(weapon)
    weapon_sym = weapon.downcase.to_sym
    fail 'Not a possible weapon' unless ([:rock, :paper, :scissors].include?(weapon_sym))
    @weapon = weapon_sym
  end

end