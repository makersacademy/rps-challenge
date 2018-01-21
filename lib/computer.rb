class Computer

  attr_reader :name, :computer_selection

  def initialize
    @name = "Computer"
  end

  def option
    @computer_selection = ["Rock", "Paper", "Scissors"].sample
  end

end
