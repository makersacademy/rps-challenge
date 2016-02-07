class Player

attr_reader :weapons, :player_name

WEAPONS = ["rock", "paper", "scissors"]

  def initialize(player_name)
    @player_name = player_name
    @weapons = WEAPONS
  end

end
