class Computer

  attr_reader :name, :weapon, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def select_attack
    @weapon = Game::WEAPONS.sample
  end

  def add_win
    @score += 1
  end
end
