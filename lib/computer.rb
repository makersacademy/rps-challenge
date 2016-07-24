class Computer
  attr_reader :choice

  def initialize
    @choice = nil
  end

  def choose_weapon
    @choice = Game::OPTIONS.sample
  end

end
