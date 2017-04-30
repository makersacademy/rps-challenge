class Computer

  def initialize
    @weapons = ["Rock", "Paper", "Scissors"]
  end

  def choose
    @weapons.sample
  end

end
