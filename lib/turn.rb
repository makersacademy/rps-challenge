class Turn

attr_reader :player_name, :player_weapon, :computer_weapon

  def initialize(options)
    @player_name = options["player_name"]
    @player_weapon = options["player_weapon"]
    @computer_weapon = options["computer_weapon"]
  end
end
