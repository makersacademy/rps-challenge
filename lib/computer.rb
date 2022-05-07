class Computer
  
  attr_reader :computer_choice

  def initialize
    @computer_choice = computer_choice
  end

  def random_choice
    options = ["rock", "paper", "scissors"]
    @computer_choice = options.sample
  end

end