class Computer

  attr_reader :moves

  def initialize
    @moves = ['Rock', 'Paper', 'Scissors']
  end

  def choice
    @moves.sample
  end

end
