class Computer

  attr_reader :choice
  
  def initialize
    @choice = nil
  end

  def random_choice
    @choice = [:rock, :paper, :scissor].sample
  end
end
