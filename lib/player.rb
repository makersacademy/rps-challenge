class Player
  attr_reader :weapon

  def weapon(weapon)
    fail 'not a possible weapon' unless Game::OPTIONS.include? weapon
    @weapon = weapon
  end
end
