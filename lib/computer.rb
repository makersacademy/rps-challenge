class Computer
  attr_reader :choice

  def choose_weapon
    @choice = Game::OPTIONS.sample
  end

end
