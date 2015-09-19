class Game

  def user_choice(choice)
    @choice = choice
  end

  def comp_choice
    @comp_choice = ["rock", "paper","scissors"].sample
    @comp_decision = @comp_choice
    result
  end

  def draw?
    return true if @comp_decision == @choice
  end

  def winner?
   return true if @choice == "scissors" && @comp_decision == "paper"
   return true if @choice == "paper" && @comp_decision == "rock"
   return true if  @choice == "rock" && @comp_decision == "scissors"
  end

  def lose?
   return true if @choice == "scissors" && @comp_decision == "rock"
   return true if @choice == "paper" && @comp_decision == "scissors"
   return true if  @choice == "rock" && @comp_decision == "paper"
  end

  def result
   if winner? == true
     "CONGRATULATIONS! YOU BEAT A MACHINE"
   elsif draw? == true
    "You drew"
   elsif lose? == true
    "YOU LOST. THIS DUMB, ILLITERATE MACHINE BEAT YOU!"
   end
  end






end
