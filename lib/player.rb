class Player

  attr_reader :name
  
  def initialize(name)
    @name = name
    @choice = nil
  end

  def chooses(choice)
    @choice = choice  
  end

  def move
    @choice
  end 
end 