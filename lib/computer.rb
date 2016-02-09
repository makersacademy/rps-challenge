class Computer
  attr_reader :name, :choice

  def initialize(name = "AI")
    @name = name
    @choice = Game::WEAPONS.sample
  end

end
