class Player
attr_reader :name, :choice

def initialize(name, choice = "rock")
  @name = name
  @choice = choice
end

# def result(choice, opponent)
#   if (choice == "rock") && (opponent == "paper")
#   "draw!"
#   end
# end

# def result(opponent)
#   # user.choice
#   opponent.random_choice
# end

# def random_choice
#   @opponent_selection = ["rock", "paper", "scissors"].sample
# end

end