class Computer
  attr_reader :choice

  def initialize
    @moves = ['Rock', 'Paper', 'Scissors']
  end

  def choose_move
    @choice = @moves[rand(3)]
  end
end
