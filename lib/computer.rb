require_relative 'game'

class Computer

  attr_reader :choice_index

  def initialize
    @choice_index = Kernel.rand(0..2)
  end

  def choice
    Game::CHOICES[choice_index]
  end

end
