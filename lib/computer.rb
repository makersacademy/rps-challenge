class Computer

  attr_reader :moves, :choice

  def initialize
    @moves = ['Rock', 'Paper', 'Scissors']
  end

  def choice
    @choice = @moves.sample
  end

end
