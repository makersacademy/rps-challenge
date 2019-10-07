class ComputerPlayer
  attr_reader :name, :last_move
  DEFAULT_NAME = 'Computer'

  def initialize(name = DEFAULT_NAME)
    @name = name
  end

  def move
    @last_move = [:rock, :paper, :scissors].sample
    return @last_move
  end

end