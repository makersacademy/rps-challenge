class Computer

  attr_reader :name 

  def initialize(name)
    @name = name
  end

  def weapon_select
    Game::WEAPONS.sample
  end
  
end