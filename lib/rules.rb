class Rules

  attr_reader :rules

  RULES = { rock: [:scissors, :lizard],
    paper: [:rock, :spock],
    scissors: [:paper, :lizard],
    lizard: [:paper, :spock],
    spock: [:rock, :scissors] 
  }
      
  def initialize(rules = RULES)
    @rules = rules
  end

  def choices
    @rules.keys
  end

  def winner(choice, comp_choice)
    
    if @rules[choice].include?comp_choice
      :player
    elsif choice == comp_choice
      :draw
    else
      :computer
    end

  end

end
