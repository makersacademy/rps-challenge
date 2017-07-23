require 'singleton'

class Game

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  include Singleton
  attr_reader :player_1, :player_2

  def add_players(players)
    @player_1 = players.first
    @player_2 = players.last
  end

  def select_player_attack(attack)
    @player_1.select_attack(attack)
  end

  def evaluate_result
    return nil if @player_1.weapon == @player_2.weapon
    return RULES[@player_1.weapon] == @player_2.weapon ? @player_1.name : @player_2.name
  end

end
