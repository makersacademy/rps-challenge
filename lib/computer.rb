class Computer 
  attr_reader :choice
  def initialize(randomiser)
    @choice = nil
    @randomiser = randomiser
  end

  def select_choice
    @choice = @randomiser.call
  end
end