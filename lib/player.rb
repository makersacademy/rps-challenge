class Player

  attr_reader :hand
  attr_reader :options

  def initialize
    @hand = nil
    @options = [:rock, :paper, :scissors]
  end

  def chooses(choice)
    @hand = choice
    fail 'Invalid Choice' if options.include?(choice) == false
  end

end
