require_relative './player'

class Human < Player
  def choose shape
    @choice = shape.to_sym
  end
end
