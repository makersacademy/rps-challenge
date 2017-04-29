class Ai

  CHOICES = [:rock, :paper, :scissors]

  attr_reader :name, :choice

  def initialize
    @name = 'Watson'
    @choice = CHOICES.sample
  end

end
