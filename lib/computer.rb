class Computer

  attr_reader :moves, :choice, :name

  def initialize
    @moves = ['Rock', 'Paper', 'Scissors']
    @name = "Computer Genius"
  end

  def choose(holder)
    @choice = @moves.sample
  end

end
