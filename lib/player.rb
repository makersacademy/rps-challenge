class Player
  attr_reader :name, :move
  def initialize(name)
    @name = name
    @move = nil
  end

  def choose_rock
    @move = 'Rock'
  end

  def choose_paper
    @move = 'Paper'
  end

  def choose_scissors
    @move = 'Scissors'
  end
end
