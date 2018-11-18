class Enemy

  attr_reader :choice

  def initialize(choice = '')
    @choice = choice
  end

  def choose_weapon
    @choice = Game::WEAPONS.sample
  end

end
