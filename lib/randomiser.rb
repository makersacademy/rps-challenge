class Randomiser

  def initialize
    @outcomes = ['rock', 'paper', 'scissors']
  end

  def randomise
    @outcomes.sample
  end 

end

