class Player
  attr_reader :name, :chosed_element

  def initialize name
    @name = name
    @available_elements = [:rock, :paper, :scissors]
    @chosed_element = []
  end

  def chose element
    fail 'Element is not available' unless available? element
    fail 'You\'ve already choose the element' if ready?
    @chosed_element << element
  end

  def ready?
    @chosed_element.length == 1
  end

  private

  def available? element
    @available_elements.include? element
  end
end
