require_relative 'game'
require_relative 'player'
class Computer 
  
  attr_reader :cpu_weapon

  def initialize
    @cpu_weapon = Game::WEAPONS.sample
  end

  def beats?(player_weapon)
    player_weapon == :paper && cpu_weapon == :scissors ||  player_weapon == :rock && cpu_weapon == :paper || player_weapon == :scissors && cpu_weapon == :rock
  end

  def ties?(player_weapon)
    player_weapon == cpu_weapon
  end

end