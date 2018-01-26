class Game

  attr_reader :player_name, :player_weapon, :computer_weapon

  def initialize(type)
    @player_name = type["player_name"]
    @player_weapon = type["player_weapon"]
    @computer_weapon = type["computer_weapon"]
  end

end
