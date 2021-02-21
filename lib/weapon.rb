require_relative 'computer'

class Weapon
  WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]
  RULES = { rock: [:scissors, :lizard],
            paper: [:rock, :spock],
            scissors: [:paper, :lizard],
            lizard: [:paper, :spock],
            spock: [:rock, :scissors] }

  attr_reader :type

  def initialize(type)
    @type = type.downcase.to_sym
  end

  def beats?(other)
    RULES[@type].include?(other.weapon_choice)
  end

  def draw?(other)
    @type == other.type
  end
end
