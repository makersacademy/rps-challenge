class ComputerPlayer

  attr_reader :weapons, :name

  def initialize(name = "Computer")
    @name = name
    @weapons = ["rock", "paper", "scissors"]
  end

  def self.create
    @computer_player = ComputerPlayer.new
  end

  def self.instance
    @computer_player
  end

  def weapon
    @weapons.sample
  end

end
