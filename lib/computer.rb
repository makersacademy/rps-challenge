class Computer
  
  # attr_reader :choices
  CHOICES = ["Rock", "Paper", "Scissors"]
  # def initialize
    # @choices = ["Rock", "Paper", "Scissors"] 
  # end

  def move
    CHOICES.sample
  end
end