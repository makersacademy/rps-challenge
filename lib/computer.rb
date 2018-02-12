class Computer

  attr_reader :move

  def random_move
    @move = %w[Rock Paper Scissors].sample
  end
end
