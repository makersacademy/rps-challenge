class Player

  attr_reader :name
  attr_accessor :chooses
  
  def initialize(name)
    @name = name
    @choice = nil
  end

  def chooses(choice)
    @choice = choice
  end
  
end 