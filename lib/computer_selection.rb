class ComputerSelection
  attr_reader :random_selection

  def initialize
    @random_selection = random_selection
  end

  def random_selection
    random_number = rand(3)
    if random_number.zero?
      "Scissors"
    elsif random_number == 1
      "Rock"
    elsif random_number == 2
      "Paper"
    end
  end

end
