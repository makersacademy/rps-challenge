class Computer

  attr_reader :move

  def initialize
    @name = name
  end

  attr_reader :name


  def update_move(*)
    move_index = Kernel.rand(0..2)
    @move = 'rock' if move_index == 0
    @move = 'paper' if move_index == 1
    @move = 'scissors' if move_index == 2
  end
end
