class Player
  attr_reader :name, :choice
  
  def initialize(name)
    @name = name
  end

  def chosen_hand(choice)
    @choice = choice
  end

  def choose_random
    @choice = ["Rock", "Paper", "Scissors"].sample
  end
end
