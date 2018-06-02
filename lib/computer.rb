class Computer
  attr_reader :weapon

  def initialize
    @weapon = ["Rock", "Paper", "Scissors"].sample
  end

end
