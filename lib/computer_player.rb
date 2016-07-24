class ComputerPlayer

  attr_reader :name, :action

  def initialize(name = "Computer")
    @name = name
    @options = [:rock, :paper, :scissors]
  end

  def move(*duck)
    @action = @options.sample
  end


end
