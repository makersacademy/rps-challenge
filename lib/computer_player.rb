class ComputerPlayer

  attr_reader :name

  def initialize(name='Computer Player')
    @name = name
  end

  def choice
    [:rock, :paper, :scissors][rand(0..2)]
  end

end
