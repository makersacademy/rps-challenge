require_relative 'move'

class Challenger

  attr_reader :name, :move

  def initialize(name, move = Move.new)
    @name = name
    @move = move
  end

end
