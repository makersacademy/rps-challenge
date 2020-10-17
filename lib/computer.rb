class Computer
  attr_reader :choices, :move

  def initialize
    @choices = ['Rock', 'Paper', 'Scissors']
  end

  def choose
    index = Kernel.rand(3)
    @move = @choices[index]
  end
end
