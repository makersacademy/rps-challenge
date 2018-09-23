class Computer
  attr_accessor :choice

  CHOICES = [:rock, :paper, :scissors]

  def initialize
    @choice = rand_choice
  end

  def rand_choice
    CHOICES.sample
  end

end
