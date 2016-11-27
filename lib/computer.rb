class Computer

  attr_reader :name

  def initialize
    @name = "AIbot"
  end

  def selection
    random = rand(1..3)
    return "Rock" if random == 1
    return "Paper" if random == 2
    return "Scissors" if random == 3
  end

end
