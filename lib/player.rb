class Player

  attr_reader :name, :computer
  attr_accessor :move

  def initialize(name, computer = false)
    @name = name
    @move = nil
    @computer = computer
  end
end
