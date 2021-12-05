class Computer
  attr_reader :choice
  def initialize
    @choice = Game::MATCHUPS.keys.sample
  end
end
