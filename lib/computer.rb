require_relative 'weapon'
require_relative 'rules'

class Computer

  def initialize(rules_instance = Rules.new)
    @rules = rules_instance
  end

  def weapon
    weapon_array.sample
  end

  def weapon_array
    @rules.choices.map { |choice|
      Weapon.new(choice)
    }
  end
end

# computer = Computer.new
#
# 20.times do
#  p computer.weapon
# end
