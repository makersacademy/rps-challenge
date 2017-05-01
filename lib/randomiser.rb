class Randomiser

  # attr_reader :outcomes

  def initialize
    @outcomes = ['rock', 'paper', 'scissors']
  end

  def randomise
    @outcomes.sample
  end 

end

