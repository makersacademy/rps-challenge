class CPU 

  attr_accessor :choices

  def initialize 
    @choices = ["Paper","Rock","Scissors"]
  end

  def move
    @choices.sample
  end 


end 