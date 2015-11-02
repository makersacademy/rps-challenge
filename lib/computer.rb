class Computer

  attr_reader :random_selection

  def initialize(random_selection)
    @random_selection = [:rock, :paper, :scissor].sample
  end
end
