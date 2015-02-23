class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def make_choice(choice)
    @choice = choice
  end

  def computer_choice
    @choice = ["paper", "rock","scissors"].sample
  end

end