require './lib/game'

class Computer
  attr_reader :name

  def initialize
    @name = 'Computer'
  end

  def random_choice
    Game::CHOICES.sample
  end
end