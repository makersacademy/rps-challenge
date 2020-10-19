require "delegate"

class Game < SimpleDelegator
  attr_reader :name, :draws, :wins, :losses

  def initialize(name)
    @name = name
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def random_choice
    ["rock", "paper", "scissors"].sample
  end

  def play(choice)
    result = evaluate(choice, random_choice)
    update_scores(result)
    result
  end

  private

  def evaluate(player_choice, computer_choice)
    return "draw" if player_choice == computer_choice
    return "win" if player_choice == "rock" && computer_choice == "scissors"
    return "win" if player_choice == "scissors" && computer_choice == "paper"
    return "win" if player_choice == "paper" && computer_choice == "rock"
    return "lose"
  end

  def update_scores(result)
    @wins += 1 if result == "win"
    @losses += 1 if result == "lose"
    @draws += 1 if result == "draw"
  end
end
