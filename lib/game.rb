class Game
  attr_reader :player, :comp_choice, :outcome
  attr_accessor :choice

  def initialize(player)
    @player = player
  end

  def comp_choose(kernel = Kernel)
    number = kernel.rand(3)
    @comp_choice = "Rock" if number == 0
    @comp_choice = "Paper" if number == 1
    @comp_choice = "Scissors" if number == 2
  end

  def determine_outcome
    if @choice == "Rock"
      if @comp_choice == "Scissors"
        @outcome = "You win!"
      elsif @comp_choice == "Paper"
        @outcome = "You lose!"
      else
        @outcome = "It's a draw!"
      end
    elsif @choice == "Paper"
      if @comp_choice == "Scissors"
        @outcome = "You lose!"
      elsif @comp_choice == "Paper"
        @outcome = "It's a draw!"
      else
        @outcome = "You win!"
      end
    else
      if @comp_choice == "Scissors"
        @outcome = "It's a draw!"
      elsif @comp_choice == "Paper"
        @outcome = "You win!"
      else
        @outcome = "You lose!"
      end
    end
  end

end
