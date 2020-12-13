class Player
  CHOICES = ["rock", "paper", "scissors"]

  attr_reader :name, :choice

  def initialize(name:, choice: nil)
    @name = name
    @choice = choice
  end
end
