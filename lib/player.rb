class Player

  COMPUTER_NAME = "COMPUTER".freeze

  attr_reader :name, :implement

  def initialize(name = COMPUTER_NAME)
    @computer = name == COMPUTER_NAME
    @name = name
    @implement = nil
  end

  def computer?
    @computer
  end

  def receive_implement(implement)
    @implement = implement
  end

end
