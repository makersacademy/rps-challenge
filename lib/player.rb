class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def move(_version = nil, move_name = nil)
    @move || @move = move_name
  end

  def reset_move
    @move = nil
  end
end
