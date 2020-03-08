class Player

  attr_reader :name, :move
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def selected(move)
    @move = move
  end

  def random_move
    @move = ['👊🏼', '✋🏼', '✌🏼'].sample
  end

end
