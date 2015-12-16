class ComputerPlayer

  attr_reader :name, :choice, :score, :computer

  def initialize
    @name = 'The Computer'
    @choice = :rock
    @score = 0
    @computer = true
  end

  def rps
    @choice = :rock if selector == 0
    @choice = :paper if selector == 1
    @choice = :scissors if selector == 2
  end

  def add_score
    @score += 1
  end

  private

  def selector
    Kernel.rand(3)
  end

end
