require_relative 'weapon'
require_relative 'rules'

class Computer

  attr_reader :weapon, :name

  def initialize(rules_instance = Rules.new)
    @rules = rules_instance
    @name = "Computer"
    @weapon = generate_weapon
  end

  def generate_weapon
    weapon_array.sample
  end

  def weapon_array
    @rules.choices.map { |choice|
      Weapon.new(choice)
    }
  end
end

# 
#
# 20.times do
#   computer = Computer.new
#  p computer.weapon
# end
