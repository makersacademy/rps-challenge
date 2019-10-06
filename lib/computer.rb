class Computer

  attr_reader :moves, :choice, :name

  def initialize
    @moves = ['Rock', 'Paper', 'Scissors']
    @name = "THE CHAMPION"
  end

  def choose
    @choice = @moves.sample
  end

end
