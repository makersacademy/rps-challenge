class Computer 
  attr_reader :name
  def initialize(name = 'The Computer')
    @name = name
  end

  def weapon
    ['Rock', 'Paper', 'Scissors'].sample
  end
end