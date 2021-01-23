class Computer
  attr_reader :weapon

  def initialize
    @weapon = ['ROCK', 'PAPER', 'SCISSORS'].sample
  end
end
