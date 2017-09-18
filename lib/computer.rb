class Computer
  attr_reader :choice

  def choice
    Game::WEAPONS.sample
  end
end
