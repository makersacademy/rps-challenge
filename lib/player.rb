# This class contains information about the player and lets them select moves
class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @move = nil
  end

  def chose_move(move)
    @move = move
  end
end
