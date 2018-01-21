class Computer

  attr_reader :name

  def initialize
    @name = "Computer"
  end

  def option
    @computer_selection = ["Rock", "Paper", "Scissors"].sample
  end

end
