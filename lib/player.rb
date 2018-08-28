class Player
  attr_reader :name, :title, :move

  def initialize(name = "Blue", title = "Deep")
    @name = name
    @title = title
  end

  def full_name
    @name + " the " + @title
  end

  def moves(move)
    @move = move
  end

end
