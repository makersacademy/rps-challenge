class Player

  attr_accessor :name

  def initialize(name)
    @name = name
    @move = %w(Rock Paper Scissors)
  end

  def move
    @move.sample
  end

end
