class Game

WEAPON_OPTIONS = [:rock, :paper, :scissors]

  attr_reader :player1, :player2

  def initialize(player1)
    @player1 = player1
    @player2 = player2
    @player_1_weapon = nil
    @player_2_weapon = nil
  end

  def player_choose_weapon(weapon)
    @player_1_weapon = weapon
  end

  def computer_choose_weapon
    @player_2_weapon = WEAPON_OPTIONS.sample
  end


end
