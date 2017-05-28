class Player
  attr_reader :name, :hand, :points

  def initialize(name)
    @name = name
    @hand = false
    @points = 0
  end

  def draw_rock
    @value = 1
    @hand = 'Rock'
  end
    
  def draw_paper
    @value = 2
    @hand = 'Paper'
  end

  def draw_scissors
    @value = 4
    @hand = 'Scissors'
  end

  def wins
    @points += 1
  end
end
