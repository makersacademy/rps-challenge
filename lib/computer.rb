class Computer

  attr_reader :name

  def initialize
    @name = "Computer"
  end

  def move
    @move ||= Game::MOVES.sample
  end

end