class Computer

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon_select
    Game::WEAPONS.sample
  end

  def weapon(choice)
    @weapon = choice
  end
  
end