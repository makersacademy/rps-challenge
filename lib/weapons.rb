class Weapons

    attr_reader :weapons, :rules

    WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]

    RULES = {rock: [:scissors, :lizard],
    paper: [:rock, :spock],
    scissors: [:paper, :lizard],
    lizard: [:paper, :spock],
    spock: [:rock, :scissors] }
        
    def initialize(weapons = WEAPONS, rules = RULES)
        @weapons = weapons
        @rules = weapons
    end

end
