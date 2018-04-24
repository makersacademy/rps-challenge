class Rules
  def self.beats
    {
      :rock => :scissors,
      :scissors => :paper,
      :paper => :rock
    }
  end
end
