require_relative 'player'
require_relative 'machine'

class Game
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }
  WEAPON = ['rock', 'scissors', 'paper']

  attr_reader :player, :machine

  def initialize (player = Player.new, machine = Machine.new)
    @player = Player.new
    @machine = Machine.new
  end

  def result
    return :win if better_weapon?
    return :draw if same_weapon?
    :lose
  end

  private

  def same_weapon?
    player.weapon == machine.weapon
  end

  def better_weapon?
    RULES[player.weapon] == machine.weapon
  end
end
