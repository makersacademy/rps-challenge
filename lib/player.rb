class Player
  attr_reader :name, :wins, :loses, :draws
  attr_accessor :chosen_element

  def initialize name
    @name = name
    @available_elements = [:rock, :paper, :scissors,
                           :lizard, :spock]
  end

  def choose element
    fail 'Element is not available' unless available? element
    @chosen_element = element
  end

  def ready?
    !(@chosen_element.nil?)
  end

  private

  def available? element
    @available_elements.include? element
  end
end
