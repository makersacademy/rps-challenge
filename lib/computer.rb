class Computer
  attr_reader :move

  def initialize
    @move = Game::RULES.keys.sample
  end

  def name
    "Computer"
  end
end
