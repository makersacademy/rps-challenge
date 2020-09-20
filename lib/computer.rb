require_relative 'game'

class Computer 
  
  attr_reader :cpu_weapon

  def initialize
    @cpu_weapon = Game::WEAPONS.sample
  end

end