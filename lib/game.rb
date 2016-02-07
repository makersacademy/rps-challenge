require_relative 'player'
require_relative 'computer'
require_relative 'weapon'

class Game
  attr_reader :player, :computer_weapon

  def initialize(player = Player.new(name), computer_weapon = Computer.new.weapon)
    @player =  player
    @computer_weapon = computer_weapon.to_sym
  end

  def player_weapon
    player.weapon.to_sym
  end

  def result
    return :draw if draw?
    player_win? ? :win : :loss
  end

  def winner
    return nil if draw?
    player_win? ? player.name : "Computer"
  end

  private

  def draw?
    player_weapon == computer_weapon
  end

  def player_win?
    Weapon.new(player_weapon).beats?(computer_weapon)
  end
end