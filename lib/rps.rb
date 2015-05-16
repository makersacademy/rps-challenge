class RPS
  attr_reader :rules

  def initialize
    @rules = {
      rock: [:scissors, :lizard],
      paper: [:spock, :rock],
      scissors: [:paper, :lizard],
      lizard: [:spock, :paper],
      spock: [:scissors, :rock]
    }
  end

  def results(player_choice)
    cpu_choice = random

    if player_choice == cpu_choice
      result = :tie
    elsif rules[player_choice].include? cpu_choice
      result = :win
    else
      result = :lose
    end

    { cpu_choice: cpu_choice, result: result }
  end

  def random
    options = [:rock, :paper, :scissors, :lizard, :spock]
    options[rand(5)]
  end
end
