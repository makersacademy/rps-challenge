class Player

  COMPUTER_NAME = "COMPUTER".freeze

  attr_reader :name, :implement

  def initialize(name)
    @computer = name == ""
    @name = (name == "" ? COMPUTER_NAME : name)
    @implement = nil
  end

  def computer?
    @computer
  end

  def receive_implement(implement)
    @implement = implement
  end

  def remove_implement
    @implement = nil
  end

end
