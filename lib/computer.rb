class Computer
  attr_reader :options
  OPTIONS = [:rock, :paper, :scissors]

  def initialize
    @options = OPTIONS
  end

  def play
    @options.sample
  end
end
