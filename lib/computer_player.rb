class ComputerPlayer
  attr_reader :move_options

  def initialize
    @move_options = ["rock", "paper", "scissors"]
  end

  def move
    @move_options.sample
  end

end
