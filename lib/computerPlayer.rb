class Computer

  attr_reader :choice

  def initialize 
    @possibilities = ["Rock", "Paper", "Scissors"]
    @choice
  end

  def choose
    @choice = @possibilities[(rand(3)-1)]
  end

end