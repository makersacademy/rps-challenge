class Rules
  attr_reader :rules
  def initialize
    @rules = {:rock => :scissors,
        :paper => :rock,
        :scissors => :paper}
  end
end
