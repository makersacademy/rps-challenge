class Game

  attr_accessor :choice


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
   return true if  @choice == "rock" && comp_choice == "scissors"
  end

end
