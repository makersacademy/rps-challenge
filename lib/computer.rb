require_relative "./game.rb"

class Computer

  attr_reader :choice

  def inititalize
    @choice
  end

  def select_weapon
    @choice = Game::WEAPONS.sample
  end

end
