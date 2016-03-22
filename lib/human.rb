require_relative 'player'

class Human

  include Player

  def initialize(name:)
    setup(name)
  end

  def play(move)
    @move = move
    played!
  end
end
