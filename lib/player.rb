class Player

  attr_reader :name

  def initialize(name = "CPU")
    @name = name
  end

  def make_move move = Moves.sample
    fail InvalidMoveError, "That is an invalid move" unless Moves.include? move
    move
  end

  private
  Moves = [:rock, :paper, :scissors]

end

class InvalidMoveError < StandardError; end
