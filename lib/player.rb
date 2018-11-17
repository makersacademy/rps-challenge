class Player

  attr_reader :name, :moves, :opponent_move

  def initialize(name = 'Player')
    @name = name
    @moves = ""
    @opponent_move = ""
  end

  def move(move)
    @moves = move
  end

  def random_move
    @opponent_move = ["Rock", "Paper", "Scissors"].sample
  end

end
