class Player
  attr_reader :name, :choice
  def initialize name
    @name = name
  end

  def rock
    @choice = "rock"
  end

  def paper
    @choice = "paper"
  end

  def scissors
    @choice = "scissors"
  end
end
