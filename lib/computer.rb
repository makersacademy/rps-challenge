class Computer
  attr_reader :choice
  def initialize
    @choice = nil
  end

  def random_choice
    @choice = PC_CHOICE.sample
  end

  private
  PC_CHOICE = [:rock, :paper, :scissors]
end
