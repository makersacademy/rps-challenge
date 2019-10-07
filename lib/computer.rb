class Computer
  attr_reader :choice

  def initialize
    @choice = ['rock', 'paper', 'scissor'].sample
  end

end
