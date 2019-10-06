class Rules
  RULES = { rock: [:scissors, :lizard],
            paper: [:rock, :spock],
            scissors: [:paper, :lizard],
            lizard: [:spock, :paper],
            spock: [:rock, :scissors] }
  REASONS = ['spock smashes scissors', 'spock vaporises rock',
             'lizard poisons spock', 'lizard eats paper',
             'rock smashes scissors', 'rock crushes lizard',
             'paper covers rock', 'paper disproves spock',
             'scissors cuts paper', 'scissors decapitates lizard']

  def defeats?(p1_choice, p2_choice)
    RULES[p1_choice].include? p2_choice
  end

  def reason_finder(p1_choice, p2_choice)
    REASONS.select { |r| r.include?(p1_choice.to_s) && r.include?(p2_choice.to_s) }.pop
  end
end
