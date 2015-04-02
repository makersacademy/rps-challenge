class Player
  attr_reader :name, :wins, :loses, :draws
  attr_accessor :chosed_element

  def initialize name
    @name = name
    @available_elements = [:rock, :paper, :scissors]
    @wins = 0
    @loses = 0
    @draws = 0
  end

  def chose element
    fail 'Element is not available' unless available? element
    fail 'You\'ve already choose the element' if ready?
    @chosed_element = element
  end

  def ready?
    !(@chosed_element.nil?)
  end

  def win
    @wins += 1
    reset_element
  end

  def lose
    @loses += 1
    reset_element
  end

  def draw
    @draws += 1
    reset_element
  end

  private

  def available? element
    @available_elements.include? element
  end

  def reset_element
    @chosed_element = nil
  end
end
