require_relative 'game'

class Computer
  attr_reader :choice
  def initialize
    @choice = randomise_weapon
  end

  def randomise_weapon
    ["rock", "paper", "scissors"].sample
  end

end
