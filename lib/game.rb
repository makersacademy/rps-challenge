require_relative "player"

class Game

  def initialize
    @choices = ["rock", "paper", "scissors"]
  end

  def random_selection
    @choices.sample
  end
end
