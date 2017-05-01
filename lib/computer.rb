class Computer

  CHOICES = [:rock, :paper, :scissors]

  attr_reader :choice

  def initialize(computer_choice = CHOICES.sample)
    @choice = computer_choice
  end
end
