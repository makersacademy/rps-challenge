class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def input_move(input)
    @move = input
  end

  def print_move
    return 'rock' if @move == '0'
    return 'paper' if @move == '1'
    return 'scissors' if @move == '2'
  end

end
