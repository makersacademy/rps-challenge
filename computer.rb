class Computer
  
  attr_reader :computer_choice

  def initialize
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
  end
end
