class Player
  attr_reader :name, :moves, :current_move

  def initialize name
    @name = name
    @moves = %w(Rock Paper Scissors)
    @current_move
  end

  def make_move move
    fail 'Invalid move' unless @moves.include?(move)
    @current_move = move
  end

  def random_move
    @moves.sample
  end
end