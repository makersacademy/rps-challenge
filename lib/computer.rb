class Computer

  attr_reader :weapon_choice

  def initialize(weapon_selection = Game::WEAPONS)
    @weapon_selection = weapon_selection
    @weapon_choice = [@weapon_selection].sample
    # @weapon_choice = [:rock, :paper, :scissors].sample
  end
end
