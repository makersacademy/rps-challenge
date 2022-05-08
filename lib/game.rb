class Game
  attr_reader :outcome, :computer_picked

  def initialize
    @outcome = nil
    @computer_picked = random_pick
  end

  def play(choice)
    p1 = choice
    p2 = computer_picked

    if (p1 == "scissors" && p2 == "paper") || (p1 == "rock" && p2 == "scissors") || 
      (p1 == "paper" && p2 == "rock")
        @outcome = "You have won!"
    elsif (p1 == "scissors" && p2 == "rock") || (p1 == "rock" && p2 == "paper") || 
      (p1 == "paper" && p2 == "scissors")
        @outcome = "You have lost!"
    else 
        @outcome = "It's a draw"
    end
  end

  private

  OPTIONS = ['rock', 'paper', 'scissors']

  def random_pick
    OPTIONS.sample
  end

end