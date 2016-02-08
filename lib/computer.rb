

class Computer

  attr_reader :choice

  def pick
    @choice = Game::WEAPONS[Kernel.rand(3)]
  end

end
