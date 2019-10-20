# require_relative 'rules'

class Weapon

  attr_reader :name

  def initialize(name, rules = Rules.new)
    @name = name.to_sym
    @hierarchy = rules.hierarchy

  end

  def beats(other)
    @hierarchy[name] == other.name
  end

end

#
# rock = Weapon.new("rock")
#
# paper = Weapon.new("paper")
#
# scissors = Weapon.new("scissors")
#
# p rock.beats(scissors)
