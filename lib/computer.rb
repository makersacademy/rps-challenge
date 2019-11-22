class Computer
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose
    # Randomly chooses Rock, Paper or Scissors
    choice = rand(0..2)
    choices = ["Rock", "Paper", "Scissors"]
    choices[choice]
  end

  def enter_choice(_not_used)
    # The argument here is for compatibility with Player class
    @choice = choose
  end

end
