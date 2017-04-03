#Decides whether the player or computer has won

class Decision

  attr_reader :win

  RULES = {:rock => :scissors, :scissors => :paper, :paper => :rock}

  def initialize(playerchoice, computerchoice)
    @win = (RULES[playerchoice] == computerchoice)
  end

private


end
