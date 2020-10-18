
class ComputerMove
  attr_reader :rps

  def initialize
    @rps = ['rock', 'paper', 'scissors']
  end
  
  def move 
    @rps.sample
  end

end