class Player

  attr_accessor :choice

  def initialize
    @choice

  end

  def choose(rockpaperscissors)
    self.choice = rockpaperscissors
  end
end