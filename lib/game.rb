class Game
  attr_reader :player, :comp_choice, :outcome, :player2
  attr_accessor :choice, :choice2

  def initialize(player)
    @player = player
  end

  def comp_choose(kernel = Kernel)
    number = kernel.rand(3)
    @comp_choice = "Rock" if number.zero?
    @comp_choice = "Paper" if number == 1
    @comp_choice = "Scissors" if number == 2
  end

  def determine_outcome
    if @choice == @comp_choice
      @outcome = "It's a draw!"
    elsif (@choice == "Rock" && @comp_choice == "Scissors") || (@choice == "Paper" && @comp_choice == "Rock") || (@choice == "Scissors" && @comp_choice == "Paper")
      @outcome = "You win!"
    else
      @outcome = "You lose!"
    end

  end

  def add_player(player)
    @player2 = player
  end

end
