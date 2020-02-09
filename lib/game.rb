class Game

  attr_reader :player_1, :player_1_choice, :computer_choice

  def initialize(player_1)
    @player_1 = player_1
  end

  def store_player_1_choice(choice)
    @player_1_choice = choice
  end

  def create_computer_choice
    choices = ["Rock", "Paper", "Scissors"]
    @computer_choice = choices[rand(3)]
  end
end