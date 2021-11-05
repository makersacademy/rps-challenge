require './lib/game'

class Computer
  attr_reader :name, :choice

  def initialize
    @name = 'Computer'
    @pc_choice = nil
  end

  def random_choice
    @pc_choice = Game::CHOICES.sample
  end
end