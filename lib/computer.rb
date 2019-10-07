class Computer

  attr_reader :choice, :name
  MOVES = ['Rock', 'Paper', 'Scissors']

  def initialize
    @name = "Computer Genius"
  end

  def choose(holder)
    @choice = MOVES.sample
  end

end
