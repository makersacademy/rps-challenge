class Game

  attr_reader :player, :computer

  def initialize(player, computer = "Ogruk")
    @player = player
    @computer = computer
  end

  def finish
    true
  end

end
