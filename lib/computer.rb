class Computer
  attr_reader :name
  WEAPONS = %i[Rock Paper Scissors]

  def initialize(name = "Archaon")
    @name = name
  end

  def choose
    WEAPONS.sample
  end
end
