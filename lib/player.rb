class Player
  attr_reader :name, :hand, :points, :value_hand

  def initialize(name)
    @name = name
    @hand = false
    @points = 0
    @value_hand = 0
  end

  def draw_rock
    @value_hand = 1
    @hand = 'Rock'
  end
    
  def draw_paper
    @value_hand = 2
    @hand = 'Paper'
  end

  def draw_scissors
    @value_hand = 4
    @hand = 'Scissors'
  end

  def wins
    @points += 1
  end
end
