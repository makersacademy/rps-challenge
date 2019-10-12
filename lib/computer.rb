class Computer

  attr_reader :choice, :name

  def initialize
    @name = "Computer Genius"
  end

  def choose(choice, moves)
    @choice = moves.sample
  end

end
