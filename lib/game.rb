class Game
  attr_reader :player, :computer
  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    return :draw if @player.move == @computer.move
  end
end
