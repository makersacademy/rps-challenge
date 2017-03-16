class Turn
  attr_reader :player_name, :player_weapon, :opponent_weapon

def initialize(options)
  @player_name = options["player_name"]
  @player_weapon = options["player_weapon"]
  @opponent_weapon = options["opponent_weapon"]
end

end
