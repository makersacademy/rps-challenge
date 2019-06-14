class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def user_move(user_move)
    @move = user_move
  end

end
