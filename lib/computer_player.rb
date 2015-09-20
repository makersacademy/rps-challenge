class ComputerPlayer

  attr_reader :name, :choice

  def initialize(name='Computer Player')
    @name = name
  end

  def make_choice
    @choice = [:rock, :paper, :scissors, :lizard, :spock][rand(0..4)]
  end

end
