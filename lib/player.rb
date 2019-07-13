class Player
  attr_reader :name, :winning_move, :move

  def initialize(name = "Computer", move = nil)
    @moves = [:rock, :scissors, :paper, :spock, :lizard]
    @name = name
    @move = move
  end

  def move?
    !@move.nil?
  end

  def randomise_move
    @move = @moves.sample
  end

  def set_move(move)
    @move = move
  end

end
