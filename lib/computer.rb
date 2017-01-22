class Computer

  attr_reader :name, :computer_selection

  def initialize
    @name = "AIbot"
  end

  def selection
    random = rand(1..5)
    return "Rock" if random == 1
    return "Paper" if random == 2
    return "Scissors" if random == 3
    return "Spock" if random == 4
    return "Lizard" if random == 5
  end

  def make_selection
    @computer_selection = selection
end
end
