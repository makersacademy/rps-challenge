require_relative 'player'

class Game
  attr_reader :player_1, :player_weapon, :human_score, :machine_score
  attr_reader :outcome

  OPPONENT = 'Machine'

  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper }

  def self.create(player_1)
    @game = Game.new(Player.new(player_1))
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
    @human_score = 0
    @machine_score = 0
    @outcome = ''
  end

  def machine_select_weapon
    WEAPONS.sample
  end

  def weapon_selected(weapon)
    @player_weapon = weapon.to_sym
  end

  def result
    if machine_select_weapon == @player_weapon
      :tied
    else
      RULES[@player_weapon] == machine_select_weapon ? :won : :lost
    end
  end
end
