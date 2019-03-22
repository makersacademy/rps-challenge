class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def random_choice
    ["Rock", "Paper", "Scissors"].sample
  end
end
