class Computer
  attr_reader :choice

  def random_choice
    @choice = Game::WEAPONS.sample
  end
end
