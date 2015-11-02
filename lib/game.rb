class Game
  attr_reader :player

  def initialize(player, computer)
    @player = player
    @computer = computer 
  end
end
