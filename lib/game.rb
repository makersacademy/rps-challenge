class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    return 'Draw' if @computer.choice == @player.choice
    'nothing'
  end
end
