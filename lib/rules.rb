class Rules
  RULES = { rock: [:scissors, :lizard],
            paper: [:rock, :spock],
            scissors: [:paper, :lizard],
            lizard: [:spock, :paper],
            spock: [:rock, :scissors]
          }
  attr_reader :type

  def defeats?(p1_choice, p2_choice)
    RULES[p1_choice].include? p2_choice
  end
end
