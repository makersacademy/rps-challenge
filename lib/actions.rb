module Actions
  ALLOWED_ACTIONS = [:rock, :paper, :scissors]

  def winning_action action1, action2
    return nil if action1 == action2
    if action1 == :rock
      return :rock if action2 == :scissors
      return :paper if action2 == :paper
    elsif action1 == :paper
      return :scissors if action2 == :scissors
      return :paper if action2 == :rock
    elsif action1 == :scissors
      return :scissors if action2 == :paper
      return :rock if action2 == :rock
    else
      return nil
    end
  end
end
