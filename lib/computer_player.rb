class ComputerPlayer

  attr_reader :name, :action

  def initialize(name = "Computer", options = [:rock, :paper, :scissors])
    @name = name
    @options = options
  end

  def move(*duck)
    @action = @options.sample
  end


end
