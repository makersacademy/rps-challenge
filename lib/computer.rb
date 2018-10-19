class Computer
  WEAPONS = ["ROCK", "PAPER", "SCISSORS"]

  attr_reader :name

  def initialize
    @name = "RPSbot"
  end

  def choose_weapon
    WEAPONS.sample
  end
end
