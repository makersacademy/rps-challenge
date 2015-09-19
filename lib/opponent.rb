class Opponent

  attr_reader :hand, :options

  def initialize
    @hand = nil
    @options = [:rock, :paper, :scissors]
  end

  def rand_choice
    @hand = options[rand(3)]
  end
end
