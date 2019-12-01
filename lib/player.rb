class Player
  attr_reader :move, :name

  def initialize(name)
    @name = name
  end

  def rock
    @move = "Rock"
  end

  def paper
    @move = "Paper"
  end

  def scissors
    @move = "Scissors"
  end
end
