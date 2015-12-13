class Player

  ELEMENTS = %w(rock paper scissors)

  attr_reader :name, :computer, :element
  alias_method :is_computer?, :computer

  def initialize name
    @name = name
    @computer = false
  end

  def assign_element(element)
    fail 'Element not valid' unless valid_element?(element)
    @element = element
  end

  private

  def valid_element?(element)
    ELEMENTS.include?(element)
  end
end
