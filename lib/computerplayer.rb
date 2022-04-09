class ComputerPlayer
  attr_reader :name, :selection

  def initialize
    @name = :HAL_9000
  end

  def make_selection
    @selection = :scissors
  end
end