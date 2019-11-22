class Computer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choose
    # Randomly chooses Rock, Paper or Scissors
    choice = rand(0..2)
    choices = ["Rock", "Paper", "Scissors"]
    choices[choice]
  end

end
