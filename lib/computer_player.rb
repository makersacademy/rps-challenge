require_relative 'player'

class ComputerPlayer < Player
  DEFAULT_NAME = 'Computer'
  def initialize(name = DEFAULT_NAME)
    @name = name
    @computer = true
  end
end
