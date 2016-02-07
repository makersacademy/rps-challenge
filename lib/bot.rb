class Bot
  attr_reader :name

  def initialize
    @name = 'Mr Robot'
  end

  def weapon
    Game::WEAPONS.sample    
  end
end
