class Game

  attr_reader :computer

  def initialize(player, computer = "Ogruk")
    @computer = computer
  end

  def finish
    true
  end

end
