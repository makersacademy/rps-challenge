class Computer
  attr_selection :computer_selection
  def computer_option
    @computer_selection = ["Rock", "Paper", "Scissors"].sample
  end
end