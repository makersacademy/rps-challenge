class Player

  attr_reader :choice

  def initialize 
    @possibilities = ["Rock", "Paper", "Scissors"]
    @choice
  end

  def choose choice
    fail "Must choose Rock, Paper or Scissors" unless @possibilities.include?(choice.capitalize)
    @choice = choice.capitalize
  end

end