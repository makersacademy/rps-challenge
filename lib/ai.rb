class AI
  attr_reader :name, :choice

  NAMES = %w(Adrian Basile Ben Gurminder James Jaycee Joe Justin Matthew Olwen Paul Pete Rob Sam).freeze
  CHOICES = %w(Rock Paper Scissors).freeze

  def initialize
    @name = NAMES[randomize(NAMES.size)]
    @choice = CHOICES[randomize(CHOICES.size)]
  end

  def randomize(size)
    Kernel.rand(size)
  end
end
