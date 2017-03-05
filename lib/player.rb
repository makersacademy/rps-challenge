class Player

  attr_reader :name, :score, :choices_simple, :choices_advanced
  attr_accessor :choice

  def initialize(name)
    name == "" ? @name = "Computer" : @name = name
    name == "" ? @automated = true : @automated = false
    @score = 0
    @choices_simple = ["Rock", "Paper", "Scissors"]
    @choices_advanced = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
  end

  def win
    @score += 1
  end

  def make_random_choice(game_type)

    @choice = @choices_simple.sample if game_type == 0
    @choice = @choices_advanced.sample if game_type == 1
    @choice
  end

  def automated?
    @automated
  end

end
