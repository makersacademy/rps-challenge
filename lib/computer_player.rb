require_relative 'Player'

class ComputerPlayer < Player

  attr_reader :name

  def initialize(name = "Computer")
    super(name)
    @weapon = WEAPONS.sample
  end

end
