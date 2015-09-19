class ComputerPlayer

  attr_reader :name, :choice

  def initialize(name='Computer Player')
    @name = name
  end

  def make_choice
    @choice = [:rock, :paper, :scissors][rand(0..2)]
  end

end
