class Player

  attr_reader :name

  def initialize(name = "CPU")
    @name = name
  end

  def make_move move = MOVES.sample
    fail InvalidMoveError, "That is an invalid move" unless MOVES.include? move
    move
  end

  private
  MOVES = [:rock, :paper, :scissors, :lizard, :Spock]

end

class InvalidMoveError < StandardError; end
