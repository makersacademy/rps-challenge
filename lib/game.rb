class Game
  attr_reader :player_choice, :computer_choice

  def initialize(choice)
    @player_choice = choice
  end

  def set_computer_choice
    num = Kernel.rand(30)
    @computer_choice = 'rock' if 0 < num && num < 10
    @computer_choice =  'paper' if 10 < num && num < 20
    @computer_choice =  'scissors' if 20 < num && num < 30
  end

  def match?
    computer_choice == player_choice
  end
end
