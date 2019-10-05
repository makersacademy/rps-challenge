class Player
  attr_reader :name, :current_turn

  def initialize(name)
    @name = name
  end

  def choose_move(move)
    @current_turn = move
  end

  def random_move
    %w[Rock Paper Scissors].sample
  end
end
