class Comp

  attr_reader :choice
  CHOICES = ["Rock", "Paper", "Scissors"]

  def initialize
    @choice = CHOICES.sample
  end

end
