class Player
  attr_reader :weapon

  def weapon=(weapon)
    fail 'not a possible weapon' unless Game::WEAPONS.includes? weapon
    @weapon = weapon
  end
end

