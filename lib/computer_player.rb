require_relative 'player'

class ComputerPlayer < Player
  def initialize(name = "Computer")
    super
  end

  def computer?
    true
  end
end
