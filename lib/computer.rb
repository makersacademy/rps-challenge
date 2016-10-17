class Computer

  attr_reader :name, :choice

  def initialize(name = "The Computer")
    @name = name
    @choice = random_choice
  end

  def random_choice
    Game::CHOICES.sample
  end

end
