

class Computer

  attr_reader :choice, :name

  def initialize
    @name = :computer
  end

  def pick
    @choice = Game::WEAPONS[Kernel.rand(3)]
  end

end
