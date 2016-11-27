require_relative "game.rb"

class Computer

  attr_reader :choice

  def inititalize
    @choice
  end

  def select_weapon
    @choice = Game::Weapons.sample
  end

end
