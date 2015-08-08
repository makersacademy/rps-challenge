class Player

  attr_reader :name, :valid_moves

  def initialize(name)
    @name = name
    @valid_moves = [:rock, :paper, :scissors]
  end

  def choose(move)
    fail 'Sorry, that is not a valid move' unless legitimate(move)
    move
  end

  private

  def legitimate(move)
    valid_moves.include?(move.downcase)
  end

end