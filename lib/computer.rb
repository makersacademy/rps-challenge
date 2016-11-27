require_relative 'game'

class Computer

  attr_reader :choice_index

  def make_choice
    @choice_index = Kernel.rand(0..2)
  end

end
