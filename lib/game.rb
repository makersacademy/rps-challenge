class Game

  attr_reader :player_name, :opposition_choice
  attr_accessor :choice

  def initialize(player_name)
    @player_name = player_name
    @choice = nil
    @opposition_choice = nil
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def choose_opponents_choice
    @opposition_choice = random_choice
  end

  def calculate_outcome
    if choice == opposition_choice 
      "Draw"
    else
      different_choices_outcomes
    end
  end

  private

  def random_choice
    ["rock", "paper", "scissors"].sample
  end

  def different_choices_outcomes
    case choice
    when "rock"
      calculate_outcome_if_rock
    when "paper"
      calculate_outcome_if_paper
    when "scissors"
      calculate_outcome_if_scissors
    end
  end

  def calculate_outcome_if_rock
    opposition_choice == "paper" ? "Lose" : "Win"
  end

  def calculate_outcome_if_paper
    opposition_choice == "scissors" ? "Lose" : "Win"
  end

  def calculate_outcome_if_scissors
    opposition_choice == "rock" ? "Lose" : "Win"
  end

end
