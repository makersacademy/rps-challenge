class RandomResult

  attr_reader :random_moves

  def initialize
    @random_moves = ['Rock', 'Paper', 'Scissor']
  end

  def random_move
    @random_moves.sample
  end
end
