
class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def rock
    @choice = Game::WEAPONS[0]
  end

  def paper
    @choice = Game::WEAPONS[1]
  end

  def scissors
    @choice = Game::WEAPONS[2]
  end
end
