class ComputerPlayer
  attr_reader :name
  DEFAULT_NAME = 'Computer'

  def initialize(name = DEFAULT_NAME)
    @name = name
  end

  def move
    [:rock, :paper, :scissors].sample
  end

end