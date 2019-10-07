class Player
  attr_reader :name, :move

  MOVES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(name = "Computer")
    @name = name
  end

  def select_move(move = MOVES.sample)
    @move = move.downcase
  end
end
