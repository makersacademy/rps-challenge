class Game

  attr_reader :choice, :random

  def initialize(choice)
    @choice = choice
    @random

  end

  def randomizer
    ["rock","paper","scissors"].sample
  end

  def result

    @random = randomizer

    if random == choice
      "draw"
    elsif random == "rock" && choice == "paper"
      "player wins"
    elsif random == "rock" && choice == "scissors"
      "house wins"
    elsif random ==  "paper" && choice == "rock"
      "house wins"
    elsif random ==  "paper" && choice == "scissors"
      "player wins"
    elsif random == "scissors" && choice == "rock"
      "player wins"
    elsif random == "scissors" && choice == "paper"
      "house wins"
    end
  end

  def output
    result
  end

end
