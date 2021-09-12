class Computer
  attr_reader :name
  WEAPONS = %w[Rock Paper Scissors].freeze

  def initialize(name = "Archaon")
    @name = name
  end

  def choose
    WEAPONS.sample
  end
end
