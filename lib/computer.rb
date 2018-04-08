class Computer

  attr_accessor :name, :rps

  DEFAULT_NAME = 'COMPUTER'

  def initialize(name = DEFAULT_NAME)
    @name = name
    @rps = [:rock, :paper, :scissors]
  end

  def choose
    @rps[Kernel.rand(0..2)]
  end

end
