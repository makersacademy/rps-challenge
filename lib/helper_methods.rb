# Note - I created the methods below instead of using Sinatra filters as I couldn't get filters to work for these lines.

def player_name_variables
  @player_1_name = @game.player_1.name
  @player_2_name = @game.player_2.name
end

def weapon_variables
  @player_1_weapon = @game.player_1.weapon
  @player_2_weapon = @game.player_2.weapon
end
