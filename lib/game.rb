class Game

  attr_reader :player, :computer, :weapons

  def initialize(player = Player.new, computer)
    @player = player
    @computer = computer
    @weapons = Weapon::WEAPONS
  end

end
