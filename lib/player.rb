class Player
  attr_reader :name, :choice

  NAMES = %w(Adrian Basile Ben Gurminder James Jaycee Joe Justin Matthew Olwen Paul Pete Rob Sam).freeze
  CHOICES = %w(Rock Paper Scissors).freeze

  def initialize(name=nil, choice=nil)
    name ? @name = name.capitalize : @name = NAMES[randomize(NAMES.size)]
    name ? @choice = choice : @choice = CHOICES[randomize(CHOICES.size)]
  end

  def randomize(size)
    Kernel.rand(size)
  end
end
