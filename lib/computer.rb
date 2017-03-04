class Computer
  attr_reader :weapon

  def initialize
    @weapon = ['rock', 'paper', 'scissors'].sample
  end
end
