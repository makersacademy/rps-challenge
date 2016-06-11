class RPS
  CHOICES = ['Rock', 'Paper', 'Scissors']
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def choose
    @choice = CHOICES.sample
  end
  
  def who_wins(human_choice)
    winner_logic(human_choice, choice)
  end

  private
  attr_reader :choice

  def winner_logic(hum_choice, comp_choice)
    c = CHOICES.index(comp_choice)
    h = CHOICES.index(hum_choice)
    return 'Draw' if (h - c) % 3 == 0
    return 'Human is Winner' if (h - c) % 3 == 1
    return 'Human is Loser' if (h - c) % 3 == 2
  end
end
