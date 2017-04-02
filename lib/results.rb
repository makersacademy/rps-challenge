require './lib/computer'

class Results

  attr_reader :current_result

WINNERS = [["Rock", "Scissors"], ["Scissors", "Paper"], ["Paper", "Rock"]]


def result(player_choice, computer_choice)
  return :draw if player_choice == computer_choice
  current_selection = [player_choice.to_s, computer_choice.to_s]
  WINNERS.include?(current_selection) ? :win : :lose
end

end
