class Computer

  def initialize
    @weapon_rack = ["Rock", "Paper", "Scissors"]
  end

  def choose
    @weapon_rack.sample
  end

end
