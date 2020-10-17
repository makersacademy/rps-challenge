class Computer
  attr_reader :choices

  def initialize
    @choices = ['Rock', 'Paper', 'Scissors']
  end

  def choice
    index = Kernel.rand(3)
    @move = @choices[index]
    @move
  end
end