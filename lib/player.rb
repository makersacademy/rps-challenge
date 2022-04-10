class Player
  CHOICES = ["Rock", "Paper", "Scissors"].freeze

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def random_choice
    CHOICES.sample
  end
end
