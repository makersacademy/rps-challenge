class Computer

  attr_reader :weapon
  def computer_choose_weapon
    @weapon = Game::WEAPONS.sample
  end

end
