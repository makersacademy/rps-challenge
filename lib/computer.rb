class Computer
  attr_reader :name, :move
  
  def initialize(name = 'Computer')
    @name = name
    @move = nil
  end

  def computer_move
    @move = ['paper', 'rock', 'scissors'].sample
  end
end
