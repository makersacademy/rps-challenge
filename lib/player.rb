require_relative 'weapon'

class Player

  attr_reader :name, :player_weapon, :comp_weapon

  def initialize(name)
    @name = name
    @player_weapon = nil
    @comp_weapon = nil
    @weapon = Weapon.new
  end

  def choose_rock
    @player_weapon = @weapon.weapons[0]
  end

  def choose_paper
    @player_weapon = @weapon.weapons[1]
  end

  def choose_scissors
    @player_weapon = @weapon.weapons[2]
  end

  def choose_weapon
    @comp_weapon = @weapon.random_weapon
  end

end
