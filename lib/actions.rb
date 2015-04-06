module Actions
  ALLOWED_ACTIONS = [:rock, :paper, :scissors]

  def winning_action action1, action2
    winning_action = nil
    if action1 == :rock
      winning_action = :rock if action2 == :scissors
      winning_action = :paper if action2 == :paper
    elsif action1 == :paper
      winning_action = :scissors if action2 == :scissors
      winning_action = :paper if action2 == :rock
    elsif action1 == :scissors
      winning_action = :scissors if action2 == :paper
      winning_action = :rock if action2 == :rock
    end
    winning_action
  end
end
