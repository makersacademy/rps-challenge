class Rules
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }
  attr_reader :type

  def defeats?(p1_choice, p2_choice)
    RULES[p1_choice] == p2_choice
  end
end
