class Computer

  attr_reader :computer_choice

  def initialize
    @computer_choice = nil
  end

  def computer_move
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
  end
end
