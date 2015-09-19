class Game

  def initialize
    @choices = ["rock","paper","scissors"]
  end

  def user_choice(choice)
    @choice = choice
  end

  def comp_choice
    @comp_choice = ["rock", "paper","scissors"].sample
  end

  def draw?
    return true if comp_choice == @choice
  end

  def winner?
   return true if @choice == "scissors" && comp_choice == "paper"
   return true if @choice == "paper" && comp_choice == "rock"
   return true if @choice == "rock" && comp_choice == "scissors"
  end

  def lose?
   return true if @choice == "scissors" && comp_choice == "rock"
   return true if @choice == "paper" && comp_choice == "scissors"
   return true if  @choice == "rock" && comp_choice == "paper"
  end

  def result
   if winner?
     "CONGRATULATIONS! YOU BEAT A MACHINE. Computer chose #{@comp_choice}"
   elsif draw?
    "You drew. Computer chose #{@comp_choice}"
   elsif lose?
    "YOU LOST. THIS DUMB, ILLITERATE MACHINE BEAT YOU! Computer chose #{@comp_choice}"
   end
  end
end
