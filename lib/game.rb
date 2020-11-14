class Game

  attr_reader :name, :name2, :p1_go

  def initialize(name, name2 = "all his friends <3")
    @name = name
    @name2 = name2
    @results = []
    @p1_go = []
  end

  def self.create(name, name2 = "all his friends <3")
    @game = Game.new(name, name2)
  end

  def self.instance
    @game
  end

  def computer?
    @name2 == "all his friends <3"
  end

  def p1_turn(weapon)
    @p1_go << weapon
  end

  def results
    @results.join(", ")
  end

  def result
    @results[-1]
  end

  def play(weapon, weapon2 = nil)
    @results << game(weapon, weapon2)
  end

  def game(weapon, comp_choice = nil)

    comp_choice = ["rock", "paper", "scissors", "lizard", "spock"].sample unless comp_choice

    return "Drew" if draw?(weapon, comp_choice)

    return "Won" if win?(weapon, comp_choice)

    return "Lost"
  end

  private

  def draw?(weapon, comp_choice)
    weapon == comp_choice
  end

  def win?(weapon, comp_choice)
    rock_scissors_and_lizard?(weapon, comp_choice) || paper_rock_and_spock?(weapon, comp_choice) || scissors_paper_and_lizard?(weapon, comp_choice) || spock_rock_and_scissors?(weapon, comp_choice) || lizard_spock_and_paper?(weapon, comp_choice)
  end

  def rock_scissors_and_lizard?(weapon, comp_choice)
    weapon == "rock" && comp_choice == "scissors" || weapon == "rock" && comp_choice == "lizard"
  end

  def paper_rock_and_spock?(weapon, comp_choice)
    weapon == "paper" && comp_choice == "rock" || weapon == "paper" && comp_choice == "spock"
  end

  def scissors_paper_and_lizard?(weapon, comp_choice)
    weapon == "scissors" && comp_choice == "paper" || weapon == "scissors" && comp_choice == "lizard"
  end

  def spock_rock_and_scissors?(weapon, comp_choice)
    weapon == "spock" && comp_choice == "rock" || weapon == "spock" && comp_choice == scissors
  end

  def lizard_spock_and_paper?(weapon, comp_choice)
    weapon == "lizard" && comp_choice == "spock" || weapon == "lizard" && comp_choice == "paper"
  end
end
