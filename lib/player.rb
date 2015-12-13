class Player

  ELEMENTS = %w(rock paper scissors)

  attr_reader :name, :computer, :element
  alias_method :is_computer?, :computer

  def initialize name
    @name = name
    @computer = false
  end

  def assign_element(element)
    element = random_element unless element
    fail 'Element not valid' unless valid_element?(element)
    @element = element
    "#{name} chose #{element}"
  end

  private

  def valid_element?(element)
    ELEMENTS.include?(element)
  end

  def random_element
    ELEMENTS.sample
  end
end
