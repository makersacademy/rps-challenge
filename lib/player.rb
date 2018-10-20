class Player

  def initialize(name)
    @name = name
    @computer = false
  end

  def name
    @name.dup
  end

  def computer?
    @computer.dup
  end
end
