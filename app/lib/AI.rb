require_relative 'Player'

class Ai < Player

  attr_reader :elements_available

  def add_element(*element)
    @elements_available = [*element]
  end

  def random_selection
    @element_selected = elements_available.shuffle.first
  end
end