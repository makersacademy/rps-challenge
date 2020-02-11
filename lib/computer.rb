class Computer
  attr_reader :name, :move
  def initialize
    @name = :computer
    @move = generate_move
  end

  def generate_move
    @computer_move = Game::MOVES.sample
  end

end 
