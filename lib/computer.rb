class Computer

attr_reader :choice

  def initialize
    @choice = nil
  end

  def weapons(weapon)
    @choice = ["rock", "paper", "scissors"].sample
  end


end
