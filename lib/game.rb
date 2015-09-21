class Game

  attr_accessor :choices, :choice, :comp_choice

  def initialize
    @choices = ["rock","paper","scissors"]
  end

  def user_choice(user_choice)
    self.choice = user_choice
  end

  def comp_decision
    self.comp_choice = choices.sample
  end

  def draw?
    choice == comp_choice
  end

  def winner?
   return true if choice == "scissors" && comp_choice == "paper"
   return true if choice == "paper" && comp_choice == "rock"
   return true if choice == "rock" && comp_choice == "scissors"
  end

  def lose?
   return true if choice == "scissors" && comp_choice == "rock"
   return true if choice == "paper" && comp_choice == "scissors"
   return true if choice == "rock" && comp_choice == "paper"
  end

  def result
   if winner?
    "CONGRATULATIONS! YOU BEAT A MACHINE."
   elsif draw?
    "You drew."
   elsif lose?
    "YOU LOST. THIS DUMB, ILLITERATE MACHINE BEAT YOU!"
   end
  end
end
