class Game

  attr_reader :name

  def initialize(name)
    @name = name
    @results = []
  end

  def results
    @results.join(", ")
  end

  def result
    @results[-1]
  end

  def play(weapon)
    @results << game(weapon)
  end

  def game(weapon)
    comp_choice = ["rock", "paper", "scissors"].sample

    return "Drew" if draw?(weapon, comp_choice)

    return "Won" if win?(weapon, comp_choice)

    return "Lost"
  end

  private

  def draw?(weapon, comp_choice)
    weapon == comp_choice
  end

  def win?(weapon, comp_choice)
    rock_and_scissors?(weapon, comp_choice) || paper_and_rock?(weapon, comp_choice) || scissors_and_paper?(weapon, comp_choice)
  end

  def rock_and_scissors?(weapon, comp_choice)
    weapon == "rock" && comp_choice == "scissors"
  end

  def paper_and_rock?(weapon, comp_choice)
    weapon == "paper" && comp_choice == "rock"
  end

  def scissors_and_paper?(weapon, comp_choice)
    weapon == "scissors" && comp_choice == "paper"
  end
end
