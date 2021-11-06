class Player

  COMPUTER_NAME = "COMPUTER".freeze

  attr_reader :name

  def initialize(name = COMPUTER_NAME)
    @computer = name == COMPUTER_NAME
    @name = name
  end

  def computer?
    @computer
  end

end
