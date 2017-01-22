class Game

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :opponent, :player, :choices, :random_choice

  def initialize(player)
    @player = player
    @choices = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
    @opponent = Player.new
  end

  def random_choice
    @choices.sample
  end

  def result
    case [@player.choice, @opponent.choice]
    when ["Rock", "Scissors"], ["Rock", "Lizard"],
          ["Scissors, Paper"], ["Scissors", "Lizard"],
          ["Paper, Rock"], ["Paper", "Spock"],
          ["Spock", "Scissors"], ["Spock", "Rock"],
          ["Lizard", "Spock"], ["Lizard", "Paper"]
      "You win!"
    when ["Paper", "Paper"], ["Rock", "Rock"], ["Scissors", "Scissors"],
          ["Spock", "Spock"], ["Lizard", "Lizard"]
      "It's a tie!"
    else
      "You lose!"
    end
  end
end
