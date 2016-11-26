class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def rock
    @choice = "Rock"
  end

  def paper
    @choice = "Paper"
  end

  def scissors
    @choice = "Scissors"
  end
end
