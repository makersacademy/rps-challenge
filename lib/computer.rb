class Computer 
  attr_reader :name
  def initialize(name = 'The Computer')
    @name = name
  end

  def move
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
