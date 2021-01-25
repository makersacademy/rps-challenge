class Turn 

  attr_reader :player_choice, :computer_choice

  def initialize(player_choice)
    @player_choice = player_choice
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def calculate_outcome
    if player_choice == computer_choice 
      "Draw"
    else
      different_choices_outcomes
    end
  end

  private

  def different_choices_outcomes
    case player_choice
    when "rock"
      calculate_outcome_if_rock
    when "paper"
      calculate_outcome_if_paper
    when "scissors"
      calculate_outcome_if_scissors
    end
  end

  def calculate_outcome_if_rock
    computer_choice == "paper" ? "Lose" : "Win"
  end

  def calculate_outcome_if_paper
    computer_choice == "scissors" ? "Lose" : "Win"
  end

  def calculate_outcome_if_scissors
    computer_choice == "rock" ? "Lose" : "Win"
  end

end
