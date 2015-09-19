class Player

  attr_reader :hand, :options

  def initialize
    @hand = nil
    @options = [:rock, :paper, :scissors]
  end
end
