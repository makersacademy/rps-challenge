class Game

  attr_reader :player, :computer


  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

end
