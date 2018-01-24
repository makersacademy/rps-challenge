class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
    @moves = [:rock, :paper, :scissors]
  end

  def choose(move)
    raise "Invalid move" unless valid?(move)
    @move = move
  end

  private

  def valid?(move)
    @moves.include? move
  end
end
