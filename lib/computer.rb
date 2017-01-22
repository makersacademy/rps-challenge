class Computer
  attr_reader :weapon

  def weapon_choice
    @weapon = Game::WEAPONS.sample
  end
end
