class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def input_move(input)
    @move = input
  end

end
