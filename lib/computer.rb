require_relative './game'

class Computer
  attr_reader :name, :choice
  def initialize(name)
    @name = name
    @choice = random_choice
  end

  def random_choice
    Game::CHOICES.sample
  end
end
