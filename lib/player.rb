class Player
  attr_reader :name, :hand, :points, :wins_from
  RULES = { 'Rock' => ['Scissors', 'Lizard'],
	    'Paper' => ['Rock', 'Spock'],
	    'Scissors' => ['Paper', 'Lizard'],
	    'Lizard' => ['Paper', 'Spock'],
	    'Spock' => ['Scissors', 'Rock'] 
   	  }

  def initialize(name)
    @name = name
    @hand = false
    @points = 0
    @wins_from = []
  end

  def draw(hand)
    @hand = hand
    @wins_from = RULES[hand]
  end

  def wins
    @points += 1
  end
  
  def empty_hand
    @hand = false 
  end
end
