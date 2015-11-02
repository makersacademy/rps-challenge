class Computer

  attr_reader :choice

  def initialize(choice)
    @choice = [:rock, :paper, :scissor].sample
  end
end
