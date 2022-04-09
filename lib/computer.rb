class Computer
  attr_reader :move

  def random_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end
end