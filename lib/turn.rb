class Turn

attr_reader :choice, :computer_choice

  def initialize(choice)
    @choice = choice
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def result
    return "drew" if @choice == @computer_choice
    return "lost" if self.lose?
    return "won" if self.win?
  end

  def lose?
    return true if @choice == "rock" && @computer_choice == "paper"
    return true if @choice == "paper" && @computer_choice == "scissors"
    return true if @choice == "scissors" && @computer_choice == "rock"
  end

  def win?
    return true if @choice == "rock" && @computer_choice == "scissors"
    return true if @choice == "scissors" && @computer_choice == "paper"
    return true if @choice == "paper" && @computer_choice == "rock"
  end

end
