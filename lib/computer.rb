class Computer
  attr_reader :choices
  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def pick_one
    self.choices.sample
  end
end
