class Computer

  attr_accessor :computer_choice

  def random_choice
    @computer_choice = ["rock", "paper", "scissors"].sample
  end
end
