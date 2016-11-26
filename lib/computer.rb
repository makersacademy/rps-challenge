require 'game'

class Computer

  attr_reader :index

  def initialize
    @index = Kernel.rand(0..2)
  end

  def choice
    Game::CHOICES[index]
  end

end
