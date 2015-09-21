class Player

  attr_reader :hand, :options

  def initialize
    @hand = nil
    @options = [:rock, :paper, :scissors, :lizard, :spock]
  end
end
