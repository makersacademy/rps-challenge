class ComputerPlayer

  attr_reader :name, :choice

  def initialize
    @name = 'Computer'
    @choice = :rock
  end

  def rps
    @choice = :rock if selector == 0
    @choice = :paper if selector == 1
    @choice = :scissors if selector == 2
  end

  private

  def selector
    Kernel.rand(3)
  end

end
