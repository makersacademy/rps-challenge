require_relative 'player'
require_relative 'machine'

class Game

attr_reader :player, :machine, :player_weapon, :winner, :game

def self.game(player)
  @game = Game.new(player)
end

def self.instance
  @game
end

def initialize(player)
  @player = Player.new(player)
  @machine = Machine.new
  @machine.choose_weapon
end

def weapon_assign(weapon)
  @player.weapon_assign(weapon)
  @player_weapon = @player.weapon
end

def claim_victory(player_weapon)
  if player_weapon == @machine.weapon
    @winner = 'Draw'
  elsif @player_weapon.beat?(@machine.weapon)
    @winner = 'Player'
  else
    @winner = 'Machine'
  end
end

end
