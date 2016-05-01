class Player
  attr_reader :selected, :name

  def initialize name
    @name = name
  end

  def rock
    @selected = "rock"
  end

  def paper
    @selected = "paper"
  end

  def scissors
    @selected = "scissors"
  end
end
