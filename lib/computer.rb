class Computer
  attr_accessor :choice

  def initialize
    @choice
  end

  def choose_weapon
    @choice = random_weapon
  end

  def random_weapon
    ["Rock", "Paper", "Scissors"].sample
  end

end
