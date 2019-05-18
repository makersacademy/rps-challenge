class Computer
  attr_reader :result

  def initialize
    @result = nil
  end
  
  def pick
    @result = ['rock', 'paper', 'scissors'].sample
  end
end
