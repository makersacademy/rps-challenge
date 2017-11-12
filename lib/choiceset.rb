require_relative 'choice'

# ChoiceSet provides all classes required for Rock, Paper, Scissors, Lizard
# Spock. It collects instances of each into a hash for ease of reference.
module ChoiceSet

  # Paper covers rock, disproves Spock.
  class Paper
    def initialize
      @name = :paper
      @kills = [:rock, :spock]
    end

    include Choice
  end

  # Scissors cuts paper, decapacitates lizard.
  class Scissors
    def initialize
      @name = :scissors
      @kills = [:paper, :lizard]
    end

    include Choice
  end

  # Rock smashes scissors, crushes lizard.
  class Rock
    def initialize
      @name = :rock
      @kills = [:scissors, :lizard]
    end

    include Choice
  end

  # Lizard eats paper, poisons Spock.
  class Lizard
    def initialize
      @name = :lizard
      @kills = [:paper, :spock]
    end

    include Choice
  end

  # Spock smashes scissors, vapourises rock.
  class Spock
    def initialize
      @name = :spock
      @kills = [:scissors, :rock]
    end
    
    include Choice
  end

  SET = {
    paper: Paper.new,
    scissors: Scissors.new,
    rock: Rock.new,
    lizard: Lizard.new,
    spock: Spock.new,
  }
end
