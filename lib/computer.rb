class Computer

  attr_reader :computer_move

  def random_move
    @computer_move = ["rock", "paper", "scissors"].sample
  end
end
