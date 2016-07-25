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
end

def weapon_assign(weapon)
  @player.weapon_assign(weapon)
  @player_weapon = @player.weapon
  @machine.weapon_assign
  winner?
end

private

def winner?
  @winner = @player_weapon.beat?(@machine.weapon)
end

end
