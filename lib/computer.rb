class Computer

  attr_reader :name, :computer_turn
  COMPUTER = Computer

  def initialize
    @name = COMPUTER
    @computer_turn = ["Rock", "Paper", "Scissors"].sample
  end

end
