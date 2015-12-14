require_relative 'player'
require_relative 'computer'

class Game
  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  extend Forwardable

  def_delegator :player_1, :name, :player_1_name

  attr_reader :players, :weapons

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @weapons = WEAPONS
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def player_1_weapon
    player_1.weapon_choice
  end

  def player_2_weapon
    player_2.weapon_choice
  end

  def result
    RULES[player_1_weapon][player_2_weapon] ? :win : :lose
  end

end
