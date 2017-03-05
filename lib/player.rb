class Player

  attr_reader :name, :score, :choices
  attr_accessor :choice

  def initialize(name)
    name == "" ? @name = "Computer" : @name = name
    name == "" ? @automated = true : @automated = false
    @score = 0
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def win
    @score += 1
  end

  def get_random_choice
    @choice = choices.sample
  end

  def automated?
    @automated
  end

end
