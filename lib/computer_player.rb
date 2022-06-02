class ComputerPlayer
  attr_accessor :choice

  def initialize 
    @choice = ["rock", "paper", "scissors"].sample
    p @choice
  end

  def name
    'Computer'
  end
end
