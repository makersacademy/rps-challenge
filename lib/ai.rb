class Ai

  CHOICES = [:rock, :paper, :scissors, :lizard, :spock]

  attr_reader :name, :choice

  def initialize
    @name = 'Watson'
    @choice = CHOICES.sample
  end

end
