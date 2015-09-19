class Human

  attr_reader :hand, :options

  def initialize
    @hand = nil
    @options = [:rock, :paper, :scissors]
  end

  def chooses(choice)
    @hand = choice
    fail 'Invalid Choice' if options.include?(choice) == false
  end
end
