class RulesList
  def initialize
    @rules_list = {
      [:paper, :paper] => 'both players chose paper',
      [:paper, :rock] => 'paper wraps rock',
      [:paper, :scissors] => 'scissors cut paper',
      [:rock, :rock] => 'both players chose rock',
      [:rock, :scissors] => 'rock blunts scissors',
      [:scissors, :scissors] => 'both players chose scissors'
    }
  end

  def rule(moves)
    @rules_list[moves.sort]
  end
end