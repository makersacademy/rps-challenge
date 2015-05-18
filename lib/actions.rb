module Actions
  ALLOWED_ACTIONS = [:rock, :paper, :scissors, :lizard, :spock]

  def winning_action action1, action2
    winning_action = nil
    if action1 == :rock
      winning_action = :paper if action2 == :paper
      winning_action = :rock if action2 == :scissors
      winning_action = :rock if action2 == :lizard
      winning_action = :spock if action2 == :spock
    elsif action1 == :paper
      winning_action = :paper if action2 == :rock
      winning_action = :scissors if action2 == :scissors
      winning_action = :lizard if action2 == :lizard
      winning_action = :paper if action2 == :spock
    elsif action1 == :scissors
      winning_action = :rock if action2 == :rock
      winning_action = :scissors if action2 == :paper
      winning_action = :scissors if action2 == :lizard
      winning_action = :spock if action2 == :spock
    elsif action1 == :lizard
      winning_action = :rock if action2 == :rock
      winning_action = :lizard if action2 == :paper
      winning_action = :scissors if action2 == :scissors
      winning_action = :lizard if action2 == :spock
    elsif action1 == :spock
      winning_action = :spock if action2 == :rock
      winning_action = :paper if action2 == :paper
      winning_action = :spock if action2 == :scissors
      winning_action = :lizard if action2 == :lizard
    end
    winning_action
  end
end
