class Weapons

  attr_reader :rules

  # WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]

  RULES = { rock: [:scissors, :lizard],
    paper: [:rock, :spock],
    scissors: [:paper, :lizard],
    lizard: [:paper, :spock],
    spock: [:rock, :scissors] }
      
  def initialize(rules = RULES)
    @rules = rules
  end

  # Use a `Weapon` class with a `beats?` or similar method that takes another weapon instance as a parameter.

end
