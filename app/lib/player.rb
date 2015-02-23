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
    if @element_selected.win == true
      @win = true
    elsif @element_selected.win == false
      @win = false
    else 
      @win = nil
    end  
  end
end