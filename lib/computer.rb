class Computer

  MOVE_HASH = {1 => :rock, 2 => :paper, 3 => :scissors}

  attr_reader :move

  def computer_move
    move_generator(MOVE_HASH)
  end

  def move_generator(store)
    @move = store[Kernel.rand(1..3)]
  end

end
