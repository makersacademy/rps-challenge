class ComputerPlayer

  attr_reader :weapons

  def initialize
    @weapons = ["rock", "paper", "scissors"]
  end

  def weapon
    @weapons.sample
  end

end
