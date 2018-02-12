class Computer

  attr_reader :move

  def random_move
    @move = %w[rock paper scissors].sample
  end
end
