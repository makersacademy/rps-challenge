class Player

  attr_reader :name, :computer

  def initialize(name)
    @name = name
    @computer = computer
  end

  def move
    @computer = [ "Rock", "Paper", "Scissors"].sample
  end

end
