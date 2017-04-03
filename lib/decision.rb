#Decides whether the player or computer has won

class Decision

  attr_reader :win

  RULES = {:rock => :scissors, :scissors => :paper, :paper => :rock}

  def self.result(playerchoice, computerchoice)
    return :win if (RULES[playerchoice] == computerchoice)
    return :draw if (playerchoice == computerchoice)
    :lose
  end

private


end
