class Computer

  attr_reader :weapon_choice

  def initialize(weapons_selection = Game::WEAPONS)
    @weapons_selection = weapons_selection
  end

  def choose_weapon
    @weapon_choice = @weapons_selection.sample
  end
end
