
class Computer
  attr_accessor :choice

  CHOICES = [:Rock, :Paper, :Scissors]

  def initialize
    @choice = rand_choice
  end

  def rand_choice
    CHOICES.sample
  end

end
