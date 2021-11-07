class Computer
  attr_reader :name, :move, :score
  
  def initialize(name = 'Computer')
    @name = name
    @move = nil
    @score = 0
  end

  def computer_move
    @move = ['paper', 'rock', 'scissors'].sample
  end

  def add_point
    @score += 1
  end
end
