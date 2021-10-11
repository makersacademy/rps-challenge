class Computer
  attr_reader :computer_selection
  def computer_option
    @computer_selection = ["Rock", "Paper", "Scissors"].sample
  end
end