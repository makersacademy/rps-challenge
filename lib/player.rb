class Player
  attr_reader :name, :choice

  NAMES = %w(Adrian Basile Ben Gurminder James Jaycee Joe Justin Matthew Olwen Paul Pete Rob Sam).freeze
  CHOICES = %w(Rock Paper Scissors).freeze

  def initialize(name=nil, choice=nil)
    name ? @name = name.capitalize : @name = NAMES.shuffle.sample
    name ? @choice = choice : @choice = CHOICES.shuffle.sample
  end
end
