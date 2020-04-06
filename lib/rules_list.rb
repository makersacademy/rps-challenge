class RulesList
  def initialize
    # the entries in the hash must be in alphabetical order 
    @rules_list = {
      [:lizard, :lizard] => 'both players chose lizard',
      [:lizard, :paper] => 'lizard eats paper',
      [:lizard, :rock] => 'rock crushes lizard',
      [:lizard, :scissors] => 'scissors decapitiate lizard',
      [:lizard, :spock] => 'lizard poisons spock',
      [:paper, :paper] => 'both players chose paper',
      [:paper, :rock] => 'paper wraps rock',
      [:paper, :scissors] => 'scissors cut paper',
      [:paper, :spock] => 'paper disproves spock',
      [:rock, :rock] => 'both players chose rock',
      [:rock, :scissors] => 'rock blunts scissors',
      [:rock, :spock] => 'spock vaporises rock',
      [:scissors, :scissors] => 'both players chose scissors',
      [:scissors, :spock] => 'spock smaskes scissors',
      [:spock, :spock] => 'both players chose spock'
    }
  end

  def rule(moves)
    @rules_list[moves.sort]
  end
end
