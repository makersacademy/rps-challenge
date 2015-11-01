class Player

  attr_reader :name, :weapon

  def initialize (name, weapon = nil)
    @name = name
    @weapon = nil
  end

  def weapon (weapon)
    fail "You can only select rock, paper or scissors in this game" unless Game::WEAPONS.include?(weapon.to_sym)
    @weapon = weapon.to_sym
  end
end
