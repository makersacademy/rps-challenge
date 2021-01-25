class Computer
  attr_reader :moved
  def initialize
    @moved = RPS.sample
  end

  RPS = [:rock, :paper, :scissors]
end
