class Computer

  attr_reader :name

  def initialize
    @name = "Computer"
  end

  def option
    @computer_selections = ["Rock", "Paper", "Scissors"].sample
  end

end
