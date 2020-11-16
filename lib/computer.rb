class Computer

  attr_reader :weapon

  def weapon
    @weapon = ["ROCK", "PAPER", "SCISSORS"].sample
  end

end
