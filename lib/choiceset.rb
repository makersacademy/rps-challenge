require_relative 'choice'

module ChoiceSet
  class Paper
    def initialize
      @name = :paper
      @kills = [:rock, :spock]
    end

    include Choice
  end

  class Scissors
    def initialize
      @name = :scissors
      @kills = [:paper, :lizard]
    end

    include Choice
  end

  class Rock
    def initialize
      @name = :rock
      @kills = [:scissors, :lizard]
    end

    include Choice
  end

  class Lizard
    def initialize
      @name = :lizard
      @kills = [:paper, :spock]
    end

    include Choice
  end

  class Spock
    def initialize
      @name = :spock
      @kills = [:scissors, :rock]
    end
    
    include Choice
  end

  Set = {
    paper: Paper.new,
    scissors: Scissors.new,
    rock: Rock.new,
    lizard: Lizard.new,
    spock: Spock.new,
  }
end
