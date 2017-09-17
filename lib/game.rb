class Game

  attr_reader :result
# #
#   def initialize(computer = Computer.new)
#     @computer = computer
#   end
#
WINS = {rock: :scissors,
        paper: :rock,
        scissors: :paper}

def result(weapon = @weapon, computer_choice = @computer_choice)
  # {true => weapon, false => computer_choice}[WINS[weapon] == computer_choice]
  
end

end

# def result(computer_choice = @computer.choice)
# # -> :paper
#   if weapon == computer_choice :draw
#     else
# RULES.to_enum.include?([arry]) ? :win : :lose
# #
#   end
# end
#
