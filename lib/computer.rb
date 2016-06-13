class Computer

  def choice
    Game::WEAPONS.sample.to_s.capitalize
  end

end
