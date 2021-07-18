class Player 

  attr_reader :name, :player_choice

  def initialize(name)
    @name = name
  end

  def choose_rock
    @player_choice = "rock"
  end

  def choose_paper
    @player_choice = "paper"
  end

  def choose_scissors
    @player_choice = "scissors"
  end
end
