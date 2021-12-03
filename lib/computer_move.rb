class ComputerMove
  attr_reader :computer_move

  def initialize
    @computer_move = ["Rock", "Paper", "Scissors"].sample
  end
end
