class ComputerPlayer

  attr_reader :weapons, :name, :weapon

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

  def choose_weapon
    @weapons.sample
  end

  def add_weapon(weapon)
    @weapon = weapon
  end

end
