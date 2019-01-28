require "./models/computer"
require "./models/player"

class Game

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @winner
  end

end
