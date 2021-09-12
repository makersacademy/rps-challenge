class Computer 
  attr_reader :name, :choice

  def initialize
    @name = "Computer"
  end

  def choose_random
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end
