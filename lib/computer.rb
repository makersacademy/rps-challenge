class Computer

  attr_reader :weapon

  def initialize
    @weapon = nil
  end

  def computer_choice
    @weapon = ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

end
