class Computer
  attr_accessor :computer_selection
  def computer_choice
    @computer_selection = ["Rock", "Paper", "Scissors"].sample
  end
end
