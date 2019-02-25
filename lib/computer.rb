class Computer

  def initialize
    @options = ['rock', 'paper', 'scissor']
  end

  def move
    @options.sample
  end


end
