class Player
  attr_reader :name, :hand, :points, :wins_from

  def initialize(name)
    @name = name
    @hand = false
    @points = 0
    @wins_from = []
  end

  def draw_rock
    @wins_from = ['Scissors', 'Lizard']
    @hand = 'Rock'
  end
    
  def draw_paper
    @wins_from = ['Rock', 'Spock']
    @hand = 'Paper'
  end

  def draw_scissors
    @wins_from = ['Paper', 'Lizard']
    @hand = 'Scissors'
  end
  
  def draw_lizard
    @wins_from = ['Paper', 'Spock']
    @hand = 'Lizard'
  end
  
  def draw_spock
    @wins_from = ['Scissors', 'Rock']
    @hand = 'Spock'
  end

  def wins
    @points += 1
  end
end
