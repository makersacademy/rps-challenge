class Rps_game

  attr_reader :weapon, :player_1, :player_2

  WEAPONS = ["Rock", "Paper", "Scissors"]

  ROCK =     { rock: "draw", paper: "lose", scissors: "win" }
  PAPER =    { rock: "win", paper: "draw", scissors: "lose" }
  SCISSORS = { rock: "lose", paper: "win", scissors: "draw" }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Rps_game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  @game = Rps_game.instance

  def outcome(player_1_weapon, player_2_weapon)
    player_1_weapon_vs = Rps_game.const_get(player_1_weapon.upcase)
    player_2_weapon_vs = Rps_game.const_get(player_2_weapon.upcase)
    @player_1.outcome = player_1_weapon_vs.fetch(player_2_weapon.downcase.to_sym)
    @player_2.outcome = player_2_weapon_vs.fetch(player_1_weapon.downcase.to_sym)
  end

end
