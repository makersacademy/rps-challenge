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

    comp_choice = ["rock", "paper", "scissors"].sample unless comp_choice

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
