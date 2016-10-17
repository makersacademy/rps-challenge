class Computer
  attr_reader :name
  
  def initialize
    @name = "Computer"
  end
  def move
    [:rock, :paper, :scissors].sample
  end
end
