class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def paper?
    Kernel.rand(1..6) > 2
  end

end