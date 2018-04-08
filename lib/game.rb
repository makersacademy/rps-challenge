require_relative './player'
class Game

  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
  end

  def win?(player_1_weapon, player_2_weapon)
    if RULES.values_at(player_1_weapon.downcase.to_sym).flatten.include?(player_2_weapon.downcase.to_sym)
      @player_1.name
    elsif RULES.values_at(player_2_weapon.downcase.to_sym).flatten.include?(player_1_weapon.downcase.to_sym)
      @player_2.name
    else
      "No winners :)"
    end
  end
end
