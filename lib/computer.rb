class Computer
  attr_reader :name, :computer_selection

  def initialize
    @name = "AIcomp"
  end

  def selection
    random = rand(1..3)
    return "Rock" if random == 1
    return "Paper" if random == 2
    return "Scissors" if random == 3
  end

  def make_selection
    @computer_selection = selection
  end

end
