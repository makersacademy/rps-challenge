class Computer
  attr_reader :computer_choice

  def weapon
    @computer_choice = Game::WEAPONS.sample
  end
end
