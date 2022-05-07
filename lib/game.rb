class Game

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player

  def initialize(weapon)
    @weapon = weapon
    # @computer = computer
  end

  def engine
  #work out logic with if/else to start with
    if @weapon == 'rock'
      "Sie ist ein Model und sie spricht mit dir!"
    end
  end

  def result
  end
end
