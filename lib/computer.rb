class Computer
  attr_reader :choices

  def initialize
    @choices = [:rock, :paper, :scissors]
  end

  def choice 
    @choices.sample.to_s.capitalize
  end
end

