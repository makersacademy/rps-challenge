class Player
  attr_reader :name, :hand, :points, :winning_hand_from

  def initialize(name)
    @name = name
    @hand = false
    @points = 0
    @winning_hand_from = []
  end

  def draw_rock
    @winning_hand_from = ['Scissors', 'Lizard']
    @hand = 'Rock'
  end
    
  def draw_paper
    @winning_hand_from = ['Rock', 'Spock']
    @hand = 'Paper'
  end

  def draw_scissors
    @winning_hand_from = ['Paper', 'Lizard']
    @hand = 'Scissors'
  end
  
  def draw_lizard
    @winning_hand_from = ['Paper', 'Spock']
    @hand = 'Lizard'
  end
  
  def draw_spock
    @winning_hand_from = ['Scissors', 'Rock']
    @hand = 'Spock'
  end

  def wins
    @points += 1
  end
end
