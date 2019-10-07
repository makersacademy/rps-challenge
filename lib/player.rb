require_relative 'game'

class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon_choice(choice = '')
    choice = choice.downcase.to_sym
    fail "Don't bring a bum to a rock, paper, scissors, fight" unless WEAPONS.include?(choice)
    @weapon = choice
  end

  def weapon_to_s
    weapon.to_s.upcase
  end

  private
  WEAPONS = [:rock, :paper, :scissors]
end