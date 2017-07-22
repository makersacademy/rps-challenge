class Computer
  def weapon
    Game::WEAPONS.sample.to_s.capitalize
  end
end
