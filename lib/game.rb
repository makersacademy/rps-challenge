class Game

attr_reader :move

  def initialize(move)
    @move = move
  end

  def random_counter_move
    ["Rock", "Paper", "Scissors"].sample
  end

end
