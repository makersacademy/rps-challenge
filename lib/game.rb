require 'singleton'

class Game

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  include Singleton
  attr_reader :players, :player_1_turn

  def initialize
    @players = []
    @player_1_turn = true
  end

  def add_player(player)
    @players += [player]
  end

  def take_turn(weapon)
    @player_1_turn ? @players.first.select_attack(weapon) : @players.last.select_attack(weapon)
    switch_turn
  end

  private

  def switch_turn
    @player_1_turn = !@player_1_turn
  end
end
