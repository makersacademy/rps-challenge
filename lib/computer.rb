require './lib/game'

class Computer
  attr_reader :name, :pc_choice

  def initialize(name='Computer')
    @name = name
    @pc_choice = nil
  end

  def random_choice
    @pc_choice = Game::CHOICES.sample
  end
end