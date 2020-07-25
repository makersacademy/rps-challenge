class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def random_selection
    @choices = ["Rock", "Paper", "Scissors"]
    @choices.sample
  end
end
