# This class contains information about the player and lets them select moves
class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def choose_move(move)
    @move = move
  end
end
