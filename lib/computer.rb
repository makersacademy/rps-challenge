require './lib/game'

class Computer
  attr_reader :name, :choice

  def initialize(name='Computer')
    @name = name
    @choice = nil
  end

  def random_choice
    @choice = Game::CHOICES.sample
  end
end