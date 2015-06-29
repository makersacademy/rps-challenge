require_relative 'game'
class Computer
  attr_reader :name

  def initialize name
    @name = name
  end

  def pick_a_choice
    self.choice = Game::CHOICES.keys.sample
  end
end