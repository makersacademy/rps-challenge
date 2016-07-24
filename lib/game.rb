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
  winner?
end

private

def winner?
  if @player_weapon.class == @machine.weapon.class
    @winner = 'Draw'
  elsif @player_weapon.beat?(@machine.weapon.class.to_s)
    @winner = @player.name
  else
    @winner = 'Machine'
  end
end

end
