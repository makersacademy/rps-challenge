RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

class Weapon
  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(other)
    RULES[type][other.type]
  end
end

puts "Initialised the rules hash"
