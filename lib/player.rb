class Player
  CHOICES = ["Rock", "Paper", "Scissors"]
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(item)
    @choice = item
  end

  def choose_random
    @choice = random_item
  end

  private
  def random_item
    CHOICES.sample
  end

end
