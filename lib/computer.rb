class Computer

  attr_reader :choice

  def initialize
    @choice = nil
  end

  def random_choice
    @choice = Game::CHOICES.sample
  end

end
