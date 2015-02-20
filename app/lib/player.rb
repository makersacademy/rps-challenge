class Player

  attr_reader :win, :name
  attr_accessor :element_selected

  def initialize(name)
    @name = name
  end

  def select_element(element)
    @element_selected = element.name
  end

  def score_win(element)
    @win = true if element.win == true
  end

  def win?
    @win
  end
end