require_relative 'game'

class Computer

  attr_reader :choose_weapon

  def initialize
    @choose_weapon = :new
  end

  def computer_weapon
    @choose_weapon = Game::WEAPONS.sample
  end

end
