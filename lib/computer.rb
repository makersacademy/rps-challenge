class Computer

  attr_reader :choice

  def pick_option
    num = Kernel.rand(1..3)
    @choice = 'Rock' if num == 1
    @choice = 'Paper' if num == 2
    @choice = 'Scissors' if num == 3
  end

end
