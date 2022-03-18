class CPU

  attr_reader :move

  NAME = "CPU"

  def random_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end

  def name
    NAME
  end

end