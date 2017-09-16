class Player
  attr_reader :weapon

  def weapon=(weapon)
    fail 'not a possible weapon' unless [:rock, :paper, :scissors].includes? weapon
    @weapon = weapon
  end
end
