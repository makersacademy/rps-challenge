class Computer

  attr_reader :choice, :name

  def initialize
    @choice = nil
    @name = "The computer"
  end

  def update_choice(*)
    num = Kernel.rand(1..3)
    @choice = 'Rock' if num == 1
    @choice = 'Paper' if num == 2
    @choice = 'Scissors' if num == 3
  end

end
