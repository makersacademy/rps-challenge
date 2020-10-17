class Computer
  attr_reader :choices

  def initialize
    @choices = ['Rock', 'Paper', 'Scissors']
  end

  def move
    index = Kernel.rand(2)
    @choices[index]
  end
end