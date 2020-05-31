class Computer

  attr_reader :name, :move
  
  def initialize
    @name = :computer
    @move = generate_computer_move
  end

  def generate_computer_move
    @computer_move = ["rock", "paper", "scissors"].sample
  end
end 
