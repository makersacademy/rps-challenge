class Player

attr_reader :name, :choice, :rps

  def initialize(name)
    @name = name
    @choice
    @rps = ["Rock", "Paper", "Scissors"]
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

  def computer
    @choice = rps.sample
  end

end
