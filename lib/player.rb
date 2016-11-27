class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choose_rock
    @choice = 'Rock'
  end

  def choose_paper
    @choice = 'Paper'
  end

  def choose_scissors
    @choice = 'Scissors'
  end

end
