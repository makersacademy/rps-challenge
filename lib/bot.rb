class Bot
  attr_reader :name

  def initialize
    @name = 'Mr Robot'
  end

  def choose_weapon
    Game::WEAPONS.sample
  end
end
