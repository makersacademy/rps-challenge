class Player

  attr_reader :name
  attr_accessor :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def choose_choice(choice)
    @choice = choice
  end

  def random_move
    @choice = ["rock", "paper", "scissors"].sample
  end
end

