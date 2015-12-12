class ComputerPlayer

  attr_reader :name, :choice

  def initialize
    @name = 'Computer'
    @choice = nil
  end

  def rps
    @choice = 'rock' if selector <= 10
    @choice = 'paper' if selector == 11...20
    @choice = 'scissors' if selector == 21...30
  end

  private

  def selector
    Kernel.rand(30)
  end

end
