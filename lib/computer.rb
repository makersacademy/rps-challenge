class Computer
  
  attr_reader :pick

  def initialize(pick = ["Paper", "Rock", "Scissors"].sample)
  @pick = pick
  end

end
