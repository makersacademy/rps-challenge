class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def choice(weapon)
    raise "Please pick rock, paper or scissors." unless Game::WEAPONS.include?(weapon.downcase.to_sym)
    @weapon = weapon.downcase.to_sym
  end

end
