class Choose

  attr_reader :decision

  def initialize(decision)
    @decision = decision
  end

  def available?(decision = @decision)
    decision = [:rock, :paper, :scissors]
    decision.include?(decision)
  end
end
