class Computer
  attr_reader :choices, :move, :name

  def initialize
    @choices = ['Rock', 'Paper', 'Scissors']
    ## test it has name!!
    @name = "Computer"
  end

  def choose
    index = Kernel.rand(3)
    @move = @choices[index]
    self
  end
end
