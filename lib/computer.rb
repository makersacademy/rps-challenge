class Computer

  MOVES = %w[rock paper scissors].freeze

  attr_reader :move

  def generate_move
    @move = ['Rock', 'Paper', 'Scissors'].sample
  end

  def update_move(*)
    move_index = Kernel.rand(0..2)
    @move = 'rock' if move_index == 0
    @move = 'paper' if move_index == 1
    @move = 'scissors' if move_index == 2
  end
end
