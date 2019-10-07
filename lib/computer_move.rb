class ComputerMove

  attr_reader :moves

def initialize
  @moves = ['Rock', 'Paper', 'Scissors']
end

def random_move
  moves.sample
end

end
