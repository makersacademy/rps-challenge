require 'forwardable'

class Game
  extend Forwardable

  WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]
  RULES = {
    rock: [:scissors],
    paper: [:rock],
    scissors: [:paper, :lizard]
  }

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def victor
    return :draw if both_chose_same?
    did_p1_win? ? :p1 : :p2
  end

  def_delegator :@player_1, :name, :p1_name
  def_delegator :@player_2, :name, :p2_name

  def_delegator :@player_1, :choose_weapon, :p1_choose
  def_delegator :@player_2, :choose_weapon, :p2_choose

  def_delegator :@player_1, :weapon_choice, :p1_choice
  def_delegator :@player_2, :weapon_choice, :p2_choice

  private

  def both_chose_same?
    player_1.weapon_choice == player_2.weapon_choice
  end

  def did_p1_win?
    RULES[player_1.weapon_choice].include? player_2.weapon_choice
  end
end
