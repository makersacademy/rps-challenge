class Computer

  attr_reader :random_choice

  def initialize(random_choice)
    @random_choice = [:rock, :paper, :scissor].sample
  end
end
