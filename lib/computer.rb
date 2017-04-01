class Computer

  attr_reader :choices

  def initialize
    @choices = [:rock, :paper, :scissors]
  end

  def choice
    choices.sample
  end

  # def self.set_instance


end
