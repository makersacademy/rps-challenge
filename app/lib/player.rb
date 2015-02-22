class Player

  attr_reader :win, :name
  attr_accessor :element_selected

  def initialize(name)
    @name = name
  end

  def select_element(element)
    @element_selected = element
  end

  def win?
   @element_selected.win == true ? @win = true : @win = false
  end
end