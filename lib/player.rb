class Player

  COMPUTER_NAME = "COMPUTER".freeze

  attr_reader :name, :weapon

  def initialize(name)
    @computer = name == ""
    @name = (name == "" ? COMPUTER_NAME : name)
    @weapon = nil
  end

  def computer?
    @computer
  end

  def receive_weapon(weapon)
    @weapon = weapon
  end

  def remove_weapon
    @weapon = nil
  end

end
