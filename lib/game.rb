class Game

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :weapons, :computer, :player

  def initialize(weapons = WEAPONS, computer, player)
    @computer = computer
    @weapons = weapons
    @player = player
  end

end
