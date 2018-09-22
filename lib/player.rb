class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def store_move(selected_move)
    @move = selected_move
  end
end
