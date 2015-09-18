class Player

  attr_reader :move

  def initialize
    @move = []
  end

  def rock
    @move << "rock"
  end

  def paper
    @move << "paper"
  end

  def scissors
    @move << "scissors"
  end

end
