class Player

  attr_reader :name , :choice , :opponent_choice

  def initialize(name)
    @name = name
  end

  def make_a_choice(choice)
    @choice = choice
  end

  def computer_choice
    @opponent_choice = ["rock", "paper", "scissors"].sample
  end

end
