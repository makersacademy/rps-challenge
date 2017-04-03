class Computer
  attr_reader :choice, :computer, :name

  WEAPONS = ["Rock", "Paper", "Scissors"]

  def initialize
    @choice = self.choose
    @name = "Computer"
  end

  def choose
    WEAPONS.sample
  end

end
