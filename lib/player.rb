class Player

  attr_reader :name, :choice

  def initialize(name = "Computer")
    @name = name
  end

  def player_choice(choice)
    @choice = choice
  end

  def computer_choice
    @choice = ["rock", "paper", "scissors"].sample
  end

end