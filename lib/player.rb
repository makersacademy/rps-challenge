
class Player

  attr_reader :name, :current_move

  def initialize(name)
    @name = name
    @current_move = nil
  end

  def move(move)
    @current_move = move
  end

  def rand_move
    @current_move = ['Rock', 'Paper', 'Scissors'].sample
  end
end
