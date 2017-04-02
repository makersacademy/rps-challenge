class Computer

  attr_reader :name, :choice, :rps

  def initialize
    @name = 'GLaDOS'
    @rps = ['rock', 'paper', 'scissors']
    @choice = nil
  end

  def choosing
    @choice = @rps.sample
  end

end
