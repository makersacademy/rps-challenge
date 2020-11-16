require_relative 'player'

class Human < Player

  attr_reader :name

  def initialize(name, move = nil)
    super( move )
    @name = name
  end

  def inputed_move(move)
    @move = move
  end

end
