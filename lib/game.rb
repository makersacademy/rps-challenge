class Game
  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end
end
