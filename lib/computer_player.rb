class ComputerPlayer

  attr_reader :name, :action

  def initialize
    @name = "Computer"
    @options = [:rock, :paper, :scissors]
  end

  def move
    @action = @options.sample
  end


end
