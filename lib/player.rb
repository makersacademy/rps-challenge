class Player
  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = false
  end

  def draw_rock
    @hand = 'Rock'
  end
  
  def draw_scissors
    @hand = 'Scissors'
  end

  def draw_paper
    @hand = 'Paper'
  end

end
