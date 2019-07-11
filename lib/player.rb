require_relative 'weapon'

class Player

  attr_reader :weapon, :name

  def initialize(name)
    @name = name
    @weapon
  end

  def equip(weapon_choice, weapon_class = Weapon)
    @weapon = weapon_class.new(weapon_choice)
  end

end

# p1 = Player.new("Zi")
# p1.equip("scissors")
# p p1.name
# p p1.weapon
#
# # rock = Weapon.new("rock")
#
# paper = Weapon.new("paper")
# #
# # scissors = Weapon.new("scissors")
# #
#
# p p1.weapon.beats(paper)
