module RPSRules
  RULES = {
    :rock => [:scissors, :lizard],
    :scissors => [:paper, :lizard],
    :paper => [:rock, :spock],
    :spock => [:rock, :scissors],
    :lizard => [:paper, :spock]
  }
  CHOICES = RULES.keys
end
