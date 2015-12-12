class ComputerPlayer

  attr_reader :name, :choice

  def initialize
    @name = 'Computer'
    @choice = nil
  end

  def rps
    @choice = 'rock' if selector == 1
    @choice = 'paper' if selector == 2
    @choice = 'scissors' if selector == 3
  end

  private

  def selector
    Kernel.rand(1...4)
  end

end
