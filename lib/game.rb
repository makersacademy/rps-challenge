require_relative 'player'

class Game
  attr_reader :player_1, :player_weapon, :machine_weapon
  attr_accessor :outcome, :human_score, :machine_score

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
    @machine_weapon = WEAPONS.sample
  end

  def weapon_selected(weapon)
    @player_weapon = weapon.to_sym
  end

  def score_human
    @human_score += 1
  end

  def score_machine
    @machine_score += 1
  end

  def result
    if @machine_weapon == @player_weapon
      score_human
      score_machine
      :tied
    elsif RULES[@player_weapon] == @machine_weapon
      score_human
      :won
    else RULES[@player_weapon] != @machine_weapon
      score_machine
      :lost
    end
  end
end
