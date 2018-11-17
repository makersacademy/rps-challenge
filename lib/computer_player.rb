class ComputerPlayer

  attr_reader :weapons

  def initialize
    @weapons = ["rock", "paper", "scissors"]
  end

  def move
    @weapons.sample
  end

end
