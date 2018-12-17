class Computer
  def initialize
    @options = ['rock', 'paper', 'scissors']
  end
  def move
    @options.sample
  end
end
