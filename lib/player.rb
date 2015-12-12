class Player

  attr_reader :name, :computer, :element
  alias_method :is_computer?, :computer

  def initialize name
    @name = name
    @computer = false
  end

  def assign_element(element)
    @element = element
  end

end
