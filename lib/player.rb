class Player
  attr_reader :name, :moves

  def initialize name
    @name = name
    @moves = %w(Rock Paper Scissors)
  end

  def make_move move
    fail 'Invalid move' unless @moves.include?(move)
    move
  end

  def random_move
    @moves.sample
  end
end