class Rps_game

  attr_reader :weapon

  WEAPONS = ["Rock", "Paper", "Scissors"]

  ROCK =     { rock: "draw", paper: "lose", scissors: "win" }
  PAPER =    { rock: "win", paper: "draw", scissors: "lose" }
  SCISSORS = { rock: "lose", paper: "win", scissors: "draw" }

  def outcome(player_1_weapon, player_2_weapon)
    weapon_vs = Rps_game.const_get(player_1_weapon.upcase)
    outcome = weapon_vs.fetch(player_2_weapon.downcase.to_sym)
  end
end
