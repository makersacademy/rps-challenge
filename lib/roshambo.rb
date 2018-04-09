require './lib/randomise.rb'

class Roshambo

  attr_reader :input

  def initialize(userchoice)
    @input = userchoice
  end

  def roll
    data = ["Rock", "Paper", "Scissors"]
    data[Randomise.new.roll]
  end

  def evaluate(roll)
    # rock > scissors > paper


  end
end
