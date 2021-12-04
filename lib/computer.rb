require_relative './randomiser'

class Computer 
  attr_reader :choice
  def initialize(randomiser = Randomiser.new)
    @choice = nil
    @randomiser = randomiser
  end

  def select_choice
    @choice = @randomiser.call
  end
end
