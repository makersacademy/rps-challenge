class Player
  attr_reader :name
  attr_accessor :choice
  def initialize(name = "Computer")
    @name = name
  end

  def comp_choose(kernel = Kernel)
    number = kernel.rand(3)
    @choice = "Rock" if number.zero?
    @choice = "Paper" if number == 1
    @choice = "Scissors" if number == 2
  end
end
