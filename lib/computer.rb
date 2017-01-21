class Computer

  attr_reader :name, :choice

  def initialize(name = 'HAL')
    @name = name
    @choices = [:rock, :paper, :scissors]
  end

  def make_choice
    @choice = @choices.sample
  end

end
